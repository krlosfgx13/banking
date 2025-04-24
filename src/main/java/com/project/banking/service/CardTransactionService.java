package com.project.banking.service;

import com.project.banking.model.Card;
import com.project.banking.model.CardTransaction;
import com.project.banking.dto.request.CardTransactionRequest;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.QueryRewardResponse;
import com.project.banking.serialization.CardTransactionsByUser;
import com.project.banking.serialization.CompanyCategoryDetail;
import org.springframework.data.domain.Page;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public interface CardTransactionService {

    BaseResponse processPayment(CardTransactionRequest request);
    BaseResponse processPaymentWithPoints(String cardNumber, BigDecimal transactionAmount);
    QueryRewardResponse queryRewardAmount(String cardNumber);
    List<CompanyCategoryDetail> getCompanyCategoryDetail();
    CardTransaction getCardTransaction(Long id);
    List<CardTransaction> getCardTransactions();
    List<CardTransaction> getCardTransactionByDateRange(LocalDateTime startDate, LocalDateTime endDate);
    Page<CardTransaction> getCardTransactionPageByDateRange(int pageNo, int pageSize, LocalDateTime startDate, LocalDateTime endDate);
    List<CardTransactionsByUser> getCardTransactionsByUser(String userName);
    int calculatePointAccumulation(Card card, BigDecimal transactionAmount);
}
