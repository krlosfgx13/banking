package com.project.banking.model;

import jakarta.persistence.*;

@Entity
@Table(name = "card_network")
public class CardNetwork {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "card_network_id")
    private Long id;

    @Column(name = "card_network_name", nullable = false, length = 32)
    private String name;
}
