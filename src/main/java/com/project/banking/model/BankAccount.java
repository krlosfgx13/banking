package com.project.banking.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
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

    public void setId(Long id) {
        this.id = id;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public void setBankAccountType(BankAccountType bankAccountType) {
        this.bankAccountType = bankAccountType;
    }

    public void setBankAccountCategory(BankAccountCategory bankAccountCategory) {
        this.bankAccountCategory = bankAccountCategory;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }
}
