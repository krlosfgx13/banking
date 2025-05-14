package com.project.banking.dto.request;

import lombok.*;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class CreateBankAccountRequest {
    private BigDecimal initialBalance;
    private long bankAccountType;
    private long bankAccountCategory;
    private long personId;
    private int cardNetworkId;
    private String cardName;
}
