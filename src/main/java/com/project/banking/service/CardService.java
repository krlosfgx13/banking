package com.project.banking.service;

import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.dto.response.BaseResponse;

import java.math.BigDecimal;

public interface CardService {

    BaseResponse createCard(CardTypeEnum cardType);
    BaseResponse payCreditCard(BankAccount bankAccount, Card card, BigDecimal amountToPay);
    Card getCreditCard(Long id);
    Card getCardByNumber(String cardNumber);
}
