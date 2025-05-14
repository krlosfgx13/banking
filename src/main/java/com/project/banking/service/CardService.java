package com.project.banking.service;

import com.project.banking.dto.request.CreateCreditCardRequest;
import com.project.banking.enumerator.CardNetworkEnum;
import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.dto.response.BaseResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface CardService {

    void createDebitCard(CardNetworkEnum cardNetwork, String cardName, long personId);
    BaseResponse createCreditCard(CreateCreditCardRequest request, CardNetworkEnum cardNetwork);
    BaseResponse payCreditCard(BankAccount bankAccount, Card card, BigDecimal amountToPay);
    Card getCardById(Long id);
    Card getCardByNumber(String cardNumber);
    List<Card> getAllCards();
    Page<Card> getAllCardsPage(Pageable pageable);
    BaseResponse updateCard(Long id, Card request);
    BaseResponse deleteCard(Long id);
}
