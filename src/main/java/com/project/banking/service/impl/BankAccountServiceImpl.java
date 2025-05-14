package com.project.banking.service.impl;

import com.project.banking.dto.request.CreateBankAccountRequest;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.BankAccount;
import com.project.banking.model.BankAccountCategory;
import com.project.banking.model.BankAccountType;
import com.project.banking.model.Person;
import com.project.banking.repository.BankAccountCategoryRepository;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.ValidationResponse;
import com.project.banking.repository.BankAccountTypeRepository;
import com.project.banking.repository.PersonRepository;
import com.project.banking.service.BankAccountService;
import com.project.banking.service.CardService;
import com.project.banking.utils.MessageConstants;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

import static com.project.banking.utils.MessageConstants.*;

@Service
@RequiredArgsConstructor
public class BankAccountServiceImpl implements BankAccountService {

    private final BankAccountRepository bankAccountRepository;
    private final BankAccountTypeRepository bankAccountTypeRepository;
    private final BankAccountCategoryRepository bankAccountCategoryRepository;
    private final PersonRepository personRepository;
    private final CardService cardService;

    @Transactional
    @Override
    public BaseResponse createBankAccount(CreateBankAccountRequest request) {
        long lastBankAccountNumber = Long.parseLong(bankAccountRepository.getLastBankAccountNumber());
        long newBankAccountNumber = lastBankAccountNumber + 1;

        BankAccountType bankAccountType = bankAccountTypeRepository.findById(request.getBankAccountType())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        BankAccountCategory bankAccountCategory = bankAccountCategoryRepository.findById(request.getBankAccountCategory())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        Person person = personRepository.findById(request.getPersonId())
                .orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

        BankAccount bankAccount = BankAccount.builder()
                .accountNumber(String.valueOf(newBankAccountNumber))
                .balance(request.getInitialBalance())
                .bankAccountType(bankAccountType)
                .bankAccountCategory(bankAccountCategory)
                .person(person)
                .createdDate(LocalDateTime.now())
                .isActive(true)
                .build();

        //create debit card for checking bank accounts here.

        bankAccountRepository.save(bankAccount);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse transferMoney(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer){
        ValidationResponse validateValues = validate(fromBankAccount, toBankAccount, amountToTransfer);
        if(!validateValues.isValid()){
            throw new ValidateRequestException(validateValues.getMessage());
        }

        fromBankAccount.setBalance(fromBankAccount.getBalance().subtract(amountToTransfer));
        toBankAccount.setBalance(toBankAccount.getBalance().add(amountToTransfer));

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }

    @Override
    public BankAccount getBankAccountById(Long id) {
        return bankAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
    }

    @Override
    public List<BankAccount> getAllBankAccounts() {
        return bankAccountRepository.findAll();
    }

    @Override
    public Page<BankAccount> getBankAccountsPage(Pageable pageable) {
        return bankAccountRepository.findAll(pageable);
    }

    @Override
    public BaseResponse updateBankAccount(Long id, BankAccount request) {
        BankAccount bankAccount = bankAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
        bankAccount.setBalance(Objects.isNull(request.getBalance()) ? bankAccount.getBalance() : request.getBalance());
        bankAccount.setCard(Objects.isNull(request.getCard()) ? bankAccount.getCard() : request.getCard());
        bankAccount.setIsActive(Objects.isNull(request.getIsActive()) ? bankAccount.getIsActive() : request.getIsActive());
        bankAccountRepository.save(bankAccount);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse deleteBankAccount(Long id) {
        BankAccount bankAccount = bankAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));
        bankAccountRepository.delete(bankAccount);
        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    private ValidationResponse validate(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer){
        if((fromBankAccount.getBalance().compareTo(amountToTransfer) <= 0))
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(INSUFFICIENT_FUNDS)
                    .build();

        if(!fromBankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(SOURCE_ACCOUNT_INACTIVE)
                    .build();

        if(!toBankAccount.getIsActive())
            return ValidationResponse
                    .builder()
                    .isValid(false)
                    .message(TARGET_ACCOUNT_INACTIVE)
                    .build();

        return ValidationResponse
                .builder()
                .isValid(true)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .build();
    }
}
