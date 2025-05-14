package com.project.banking.dto.request;

import lombok.*;

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
    private int cardTypeId;
    private int cutoffDate;
    private int paymentDate;

}
