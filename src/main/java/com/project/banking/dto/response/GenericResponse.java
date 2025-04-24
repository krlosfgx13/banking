package com.project.banking.dto.response;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class GenericResponse<T> {
    private String status;
    private String message;
    private T data; // Can be List<T>, Page<T>, a single object, etc.
}