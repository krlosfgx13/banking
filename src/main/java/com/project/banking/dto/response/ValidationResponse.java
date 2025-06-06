package com.project.banking.dto.response;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class ValidationResponse {
    private boolean isValid;
    private String message;
}
