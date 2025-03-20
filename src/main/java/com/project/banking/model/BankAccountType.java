package com.project.banking.model;

import jakarta.persistence.*;

@Entity
@Table(name = "bank_account_type")
public class BankAccountType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bank_account_type_id")
    private Long id;

    @Column(name = "bank_account_type_name", nullable = false, length = 32)
    private String name;
}
