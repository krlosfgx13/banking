package com.project.banking.service.impl;

import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.repository.CardRepository;
import com.project.banking.response.BaseResponse;
import com.project.banking.response.ValidationResponse;
import com.project.banking.service.CardService;
import com.project.banking.service.CardServiceTest;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class CardServiceImpl implements CardService, CardServiceTest {

    private final BankAccountRepository bankAccountRepository;
    private final CardRepository cardRepository;

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
    public BankAccount getBankAccount(Long id) {
        return bankAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
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
}
