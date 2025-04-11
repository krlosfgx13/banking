package com.project.banking.model;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
@Table(name = "card_type")
public class CardType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "card_type_id")
    private Long id;

    @Column(name = "card_type_name", nullable = false, length = 32)
    private String name;
}
