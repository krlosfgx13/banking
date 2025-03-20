package com.project.banking.request;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class CardCategoryRequest {
    private String cardCategoryName;
}
