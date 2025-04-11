package com.project.banking.request;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Builder
public class TransferMoneyRequest {
    private Long fromBankAccountId;
    private Long toBankAccountId;
    private BigDecimal amountToTransfer;
}
