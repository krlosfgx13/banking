package com.project.banking.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "card_category")
public class CardCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "card_category_id")
    private Long id;

    @Column(name = "card_category_name", nullable = false, length = 32)
    private String cardCategoryName;

    public void setId(Long id) {
        this.id = id;
    }

    public void setCardCategoryName(String cardCategoryName) {
        this.cardCategoryName = cardCategoryName;
    }
}


