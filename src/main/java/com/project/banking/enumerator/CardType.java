package com.project.banking.enumerator;

public enum CardType {
    CREDIT("Credit"),
    DEBIT("Debit");

    private final String name;

    CardType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
