package com.project.banking.service;

import com.project.banking.model.BankAccount;
import com.project.banking.dto.response.BaseResponse;

import java.math.BigDecimal;

public interface BankAccountService {


    BaseResponse transferMoney(BankAccount fromBankAccount, BankAccount toBankAccount, BigDecimal amountToTransfer);
    BankAccount getBankAccount(Long id);
}
