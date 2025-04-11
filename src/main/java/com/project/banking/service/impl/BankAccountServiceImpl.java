package com.project.banking.service.impl;

import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.BankAccount;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.response.BaseResponse;
import com.project.banking.response.ValidationResponse;
import com.project.banking.service.BankAccountService;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class BankAccountServiceImpl implements BankAccountService {

    private final BankAccountRepository bankAccountRepository;

    @Override
    public BaseResponse transferMoney(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer){
        ValidationResponse validateValues = validate(fromBankAccount, toBankAccount, amountToTransfer);
        if(!validateValues.isValid()){
            throw new ValidateRequestException(validateValues.getMessage());
        }

        fromBankAccount.setBalance(fromBankAccount.getBalance().subtract(amountToTransfer));
        toBankAccount.setBalance(toBankAccount.getBalance().add(amountToTransfer));

        return BaseResponse.builder()
                .status(MessageConstants.SUCCESS)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }

    @Override
    public BankAccount getBankAccount(Long id) {
        return bankAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
    }

    private ValidationResponse validate(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer){
        if((fromBankAccount.getBalance().compareTo(amountToTransfer) <= 0))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Insufficient funds.")
                    .build();

        if(!fromBankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Source account is not active.")
                    .build();

        if(!toBankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message("Target account is not active.")
                    .build();

        return ValidationResponse
                .builder()
                .isValid(true)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }
}
