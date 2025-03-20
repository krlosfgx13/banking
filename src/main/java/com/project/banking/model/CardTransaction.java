package com.project.banking.model;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "card_transaction")
public class CardTransaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "card_transaction_id")
    private Long id;

    @Column(name = "company_name", nullable = false, length = 256)
    private String companyName;

    @Column(name = "company_category", nullable = false, length = 256)
    private String companyCategory;

    @Column(name = "transaction_amount", nullable = false, precision = 6, scale = 2)
    private BigDecimal transactionAmount;

    @ManyToOne
    @JoinColumn(name = "card_id", nullable = false)
    private Card card;

    @Column(name = "transaction_date", nullable = false)
    private LocalDateTime transactionDate;
}
