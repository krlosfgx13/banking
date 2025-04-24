package com.project.banking.dto.request;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class CardCategoryRequest {
    private String cardCategoryName;
}
