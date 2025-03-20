package com.project.banking.exception;

public class ValidateCardException extends RuntimeException {
    public ValidateCardException(String message) {
        super(message);
    }
}
