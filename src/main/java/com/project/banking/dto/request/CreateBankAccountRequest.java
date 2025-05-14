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
    private int bankAccountType;
    private int bankAccountCategory;
    private int personId;
    private int cardNetworkId;
}
