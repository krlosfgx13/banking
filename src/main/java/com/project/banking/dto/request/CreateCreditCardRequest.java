package com.project.banking.dto.request;

import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class CreateCreditCardRequest {
    private String cardName;
    private int personId;
    private LocalDate expirationDate;
    private int cardNetworkId;
    private long cardCategoryId;
    private int cutoffDate;
    private int paymentDate;
    private BigDecimal creditLimit;
    private long rewardProgramId;
    private int rewardAmount;
}
