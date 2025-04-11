package com.project.banking.service;

import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.response.BaseResponse;

import java.math.BigDecimal;

public interface CardServiceTest {
    BaseResponse payCreditCard(BankAccount bankAccount, Card card, BigDecimal amountToPay);
}
