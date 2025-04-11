package com.project.banking.service;

import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.request.PayCreditCardRequest;
import com.project.banking.response.BaseResponse;

import java.math.BigDecimal;
import java.util.Optional;

public interface CardService {

    BaseResponse payCreditCard(BankAccount bankAccount, Card card, BigDecimal amountToPay);
    BankAccount getBankAccount(Long id);
    Card getCreditCard(Long id);
    Card getCardByNumber(String cardNumber);
}
