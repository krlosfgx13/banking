package com.project.banking.serialization;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
public class CardTransactionsByUser {
    private Long cardTransactionId;
    private String companyName;
    private String companyCategory;
    private BigDecimal transactionAmount;
    private LocalDateTime transactionDate;
    private Long cardId;
    private String cardNumber;
    private Long personId;
    private String userName;
}
