package com.project.banking.service.impl;

import com.project.banking.enumerator.CardNetworkEnum;
import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.repository.CardRepository;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.ValidationResponse;
import com.project.banking.service.CardService;
import com.project.banking.service.CardServiceTest;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;
import java.util.Random;

@Service
@RequiredArgsConstructor
public class CardServiceImpl implements CardService, CardServiceTest {

    private final CardRepository cardRepository;

    @Override
    public BaseResponse createCard(CardTypeEnum cardType) {
        return null;
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
    public Card getCreditCard(Long id) {
        return cardRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
    }

    @Override
    public Card getCardByNumber(String cardNumber) {
        return cardRepository.findByCardNumber(cardNumber).orElseThrow(() -> new ValidateRequestException("Entity not found"));
    }

    private ValidationResponse validate(BankAccount bankAccount, Card card, BigDecimal amountToPay){
        if((bankAccount.getBalance().compareTo(amountToPay) <= 0))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Insufficient funds.")
                    .build();

        if(!bankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Source account is not active.")
                    .build();

        if(!card.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Credit card not active.")
                    .build();

        if(card.getCardType().getName().equals(CardTypeEnum.DEBIT.getName()))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("This is not a credit card, but debit.")
                    .build();

        return ValidationResponse
                .builder()
                .isValid(true)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }

    public static String generateCardNumber(CardNetworkEnum network) {
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
                throw new IllegalArgumentException("Unsupported card type");
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
