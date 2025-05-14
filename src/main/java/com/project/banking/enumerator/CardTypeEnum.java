package com.project.banking.enumerator;

import lombok.Getter;

@Getter
public enum CardTypeEnum {
    DEBIT(1, "Debit"),
    CREDIT(2, "Credit");

    private final long id;
    private final String name;

    CardTypeEnum(long id, String name) {
        this.id = id;
        this.name = name;
    }
}
