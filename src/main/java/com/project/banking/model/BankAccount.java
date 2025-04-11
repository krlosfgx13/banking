package com.project.banking.model;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "bank_account")
public class BankAccount {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bank_account_id")
    private Long id;

    @Column(name = "bank_account_number", nullable = false, length = 16)
    private String accountNumber;

    @Column(name = "balance", nullable = false, precision = 6, scale = 2)
    private BigDecimal balance;

    @ManyToOne
    @JoinColumn(name = "card_id")
    private Card card;

    @ManyToOne
    @JoinColumn(name = "bank_account_type_id", nullable = false)
    private BankAccountType bankAccountType;

    @ManyToOne
    @JoinColumn(name = "bank_account_category_id", nullable = false)
    private BankAccountCategory bankAccountCategory;

    @ManyToOne
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Column(name = "created_date", nullable = false)
    private LocalDateTime createdDate;

    @Column(name = "is_active", nullable = false)
    private Boolean isActive;
}
