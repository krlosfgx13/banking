package com.project.banking.enumerator;

import lombok.Getter;

@Getter
public enum CardCategoryEnum {
    CLASSIC(1, "Classic"),
    GOLD(2, "Gold"),
    PLATINUM(3, "Platinum"),
    BLACK(4, "Black");

    private final long id;
    private final String name;

    CardCategoryEnum(long id, String name) {
        this.id = id;
        this.name = name;
    }

}
