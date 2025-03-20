package com.project.banking.model;

import jakarta.persistence.*;

@Entity
@Table(name = "bank_account_category")
public class BankAccountCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bank_account_category_id")
    private Long id;

    @Column(name = "bank_account_category_name", nullable = false, length = 32)
    private String name;
}
