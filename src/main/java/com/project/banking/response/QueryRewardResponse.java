package com.project.banking.response;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Builder
@Getter
@Setter
public class QueryRewardResponse {
    private Integer rewardAmount;
    private BigDecimal moneyAmount;
}
