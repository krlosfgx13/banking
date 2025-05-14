package com.project.banking.enumerator;

import lombok.Getter;

@Getter
public enum CardNetworkEnum {
    VISA("Visa"),
    MASTERCARD("Mastercard");

    private final String name;

    CardNetworkEnum(String name) {
        this.name = name;
    }

}
