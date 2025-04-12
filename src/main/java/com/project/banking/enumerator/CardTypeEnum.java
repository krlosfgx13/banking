package com.project.banking.enumerator;

public enum CardTypeEnum {
    CREDIT("Credit"),
    DEBIT("Debit");

    private final String name;

    CardTypeEnum(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
