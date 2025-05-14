package com.project.banking.service.impl;

import com.project.banking.dto.request.CreateCreditCardRequest;
import com.project.banking.enumerator.CardCategoryEnum;
import com.project.banking.enumerator.CardNetworkEnum;
import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.*;
import com.project.banking.repository.*;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.ValidationResponse;
import com.project.banking.service.CardService;
import com.project.banking.service.CardServiceTest;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import static com.project.banking.utils.MessageConstants.*;

@Service
@RequiredArgsConstructor
public class CardServiceImpl implements CardService, CardServiceTest {

    private final CardRepository cardRepository;
    private final PersonRepository personRepository;
    private final CardNetworkRepository cardNetworkRepository;
    private final CardTypeRepository cardTypeRepository;
    private final CardCategoryRepository cardCategoryRepository;
    private final RewardProgramRepository rewardProgramRepository;

    @Override
    public void createDebitCard(CardNetworkEnum cardNetwork, String cardName, long personId) {
        /*
        * Handle custom date example
            Calendar startCalendar = new GregorianCalendar();
            startCalendar.set(Calendar.YEAR, Integer.parseInt(value));
            startCalendar.set(Calendar.MONTH, i);
            startCalendar.set(Calendar.DAY_OF_MONTH, 1);

            Calendar endCalendar = new GregorianCalendar();
            endCalendar.set(Calendar.YEAR, Integer.parseInt(value));
            endCalendar.set(Calendar.MONTH, i);
            endCalendar.set(Calendar.DAY_OF_MONTH, endCalendar.getActualMaximum(Calendar.DAY_OF_MONTH));

            LocalDate startDate = LocalDate.ofInstant(startCalendar.toInstant(), ZoneId.systemDefault());
            LocalDate endDate = LocalDate.ofInstant(endCalendar.toInstant(), ZoneId.systemDefault());
        * */
        CardType cardType = cardTypeRepository.findById(CardTypeEnum.DEBIT.getId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        CardCategory cardCategory = cardCategoryRepository.findById(CardCategoryEnum.CLASSIC.getId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        Card card = createCard(cardNetwork, cardName, personId);
        card.setExpirationDate(LocalDate.now().plusYears(4));
        card.setCardType(cardType);
        card.setCardCategory(cardCategory);
        cardRepository.save(card);
    }

    @Override
    public BaseResponse createCreditCard(CreateCreditCardRequest request, CardNetworkEnum cardNetwork) {
        CardType cardType = cardTypeRepository.findById(CardTypeEnum.CREDIT.getId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        CardCategory cardCategory = cardCategoryRepository.findById(request.getCardCategoryId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        RewardProgram rewardProgram = rewardProgramRepository.findById(request.getRewardProgramId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        Card card = createCard(cardNetwork, request.getCardName(), request.getPersonId());
        card.setExpirationDate(request.getExpirationDate());
        card.setCardType(cardType);
        card.setCardCategory(cardCategory);
        card.setCutoffDate(request.getCutoffDate());
        card.setPaymentDate(request.getPaymentDate());
        card.setCreditLimit(request.getCreditLimit());
        card.setCreditUsed(new BigDecimal("0.00"));
        card.setRewardProgram(rewardProgram);
        card.setRewardAmount(request.getRewardAmount());
        cardRepository.save(card);

        return BaseResponse.builder()
                .status(MessageConstants.SUCCESS)
                .message(MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse payCreditCard(BankAccount bankAccount, Card card, BigDecimal amountToPay) {
        ValidationResponse validateValues = validate(bankAccount, card, amountToPay);
        if(!validateValues.isValid()){
            throw new ValidateRequestException(validateValues.getMessage());
        }

        bankAccount.setBalance(bankAccount.getBalance().subtract(amountToPay));
        card.setCreditUsed(card.getCreditUsed().subtract(amountToPay));

        return BaseResponse.builder()
                .status(MessageConstants.SUCCESS)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }

    @Override
    public Card getCardById(Long id) {
        return cardRepository.findById(id)
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
    }

    @Override
    public Card getCardByNumber(String cardNumber) {
        return cardRepository.findByCardNumber(cardNumber)
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
    }

    @Override
    public List<Card> getAllCards() {
        return cardRepository.findAll();
    }

    @Override
    public Page<Card> getAllCardsPage(Pageable pageable) {
        return cardRepository.findAll(pageable);
    }

    @Override
    public BaseResponse updateCard(Long id, Card request) {
        Card card = cardRepository.findById(id)
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        card.setCutoffDate(request.getCutoffDate());
        card.setPaymentDate(request.getPaymentDate());
        card.setCreditLimit(request.getCreditLimit());
        card.setIsActive(request.getIsActive());
        cardRepository.save(card);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse deleteCard(Long id) {
        Card card = cardRepository.findById(id)
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
        cardRepository.delete(card);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    private ValidationResponse validate(BankAccount bankAccount, Card card, BigDecimal amountToPay){
        if((bankAccount.getBalance().compareTo(amountToPay) <= 0))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(INSUFFICIENT_FUNDS)
                    .build();

        if(!bankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(SOURCE_ACCOUNT_INACTIVE)
                    .build();

        if(!card.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(INACTIVE_CARD)
                    .build();

        if(card.getCardType().getName().equals(CardTypeEnum.DEBIT.getName()))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(INVALID_CARD_TYPE)
                    .build();

        return ValidationResponse
                .builder()
                .isValid(true)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }

    private Card createCard(CardNetworkEnum cardNetwork, String cardName, long personId){
        Person person = personRepository.findById(personId).orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
        CardNetwork network = cardNetworkRepository.findById(cardNetwork.getId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        short cvv = (short) ThreadLocalRandom.current().nextInt(100, 1000);
        short pin = (short) ThreadLocalRandom.current().nextInt(1000, 10000);

        return Card.builder()
                .cardNumber(generateCardNumber(cardNetwork))
                .cardName(cardName)
                .person(person)
                .cvv(cvv)
                .cardNetwork(network)
                .pin(pin)
                .isActive(true)
                .build();
    }

    private static String generateCardNumber(CardNetworkEnum network) {
        int length = 16;
        String prefix;
        Random random = new Random();

        switch (network) {
            case VISA:
                prefix = "4";
                break;
            case MASTERCARD:
                // Mastercard prefixes range from 51 to 55 or 2221 to 2720
                int[] prefixes = {51, 52, 53, 54, 55};
                prefix = String.valueOf(prefixes[random.nextInt(prefixes.length)]);
                break;
            default:
                throw new IllegalArgumentException(UNSUPPORTED_CARD_TYPE);
        }

        // Generate the card number without the last digit
        StringBuilder cardNumber = new StringBuilder(prefix);
        while (cardNumber.length() < length - 1) {
            cardNumber.append(random.nextInt(10));
        }

        // Calculate and append the Luhn check digit
        int checkDigit = calculateLuhnCheckDigit(cardNumber.toString());
        cardNumber.append(checkDigit);

        return cardNumber.toString();
    }

    private static int calculateLuhnCheckDigit(String number) {
        int sum = 0;
        boolean alternate = true;

        // Start from the right (excluding the check digit space)
        for (int i = number.length() - 1; i >= 0; i--) {
            int n = Character.getNumericValue(number.charAt(i));
            if (alternate) {
                n *= 2;
                if (n > 9) n -= 9;
            }
            sum += n;
            alternate = !alternate;
        }

        // The check digit is the amount needed to reach the next multiple of 10
        return (10 - (sum % 10)) % 10;
    }
}
