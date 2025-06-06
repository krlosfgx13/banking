package com.project.banking.enumerator;

import lombok.Getter;

@Getter
public enum CardNetworkEnum {
    VISA(1, "Visa"),
    MASTERCARD(2, "Mastercard");

    private final long id;
    private final String name;

    CardNetworkEnum(long id, String name) {
        this.id = id;
        this.name = name;
    }

}
