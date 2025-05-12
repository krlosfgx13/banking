package com.project.banking.service;

import com.project.banking.dto.request.CreateBankAccountRequest;
import com.project.banking.model.BankAccount;
import com.project.banking.dto.response.BaseResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface BankAccountService {

    BaseResponse createBankAccount(CreateBankAccountRequest request);
    BaseResponse transferMoney(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer);
    BankAccount getBankAccountById(Long id);
    List<BankAccount> getAllBankAccounts();
    Page<BankAccount> getBankAccountsPage(Pageable pageable);
    BaseResponse updateBankAccount(Long id, BankAccount request);
    BaseResponse deleteBankAccount(Long id);
}
