package com.project.banking.dto.response;

import lombok.*;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;

@SuperBuilder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QueryRewardResponse extends BaseResponse {
    private String cardNumber;
    private Integer rewardAmount;
    private BigDecimal moneyAmount;
}
