package com.project.banking.dto.request;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Builder
public class PayCreditCardRequest {
    private Long bankAccountId;
    private Long creditCardId;
    private BigDecimal amountToPay;
}
