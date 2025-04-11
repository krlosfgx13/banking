package com.project.banking.request;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class QueryRewardAmountRequest {
    String creditCardNumber;
}
