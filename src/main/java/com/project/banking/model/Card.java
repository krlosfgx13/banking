package com.project.banking.model;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "card")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Card {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "card_id")
    private Long id;

    @Column(name = "card_number", nullable = false, length = 20)
    private String cardNumber;

    @Column(name = "card_name", nullable = false, length = 32)
    private String cardName;

    @ManyToOne
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Column(name = "expiration_date", nullable = false)
    private LocalDate expirationDate;

    @Column(name = "CVV", nullable = false)
    private Short cvv;

    @ManyToOne
    @JoinColumn(name = "card_network_id", nullable = false)
    private CardNetwork cardNetwork;

    @ManyToOne
    @JoinColumn(name = "card_type_id", nullable = false)
    private CardType cardType;

    @ManyToOne
    @JoinColumn(name = "card_category_id", nullable = false)
    private CardCategory cardCategory;

    @Column(name = "pin", nullable = false)
    private Short pin;

    @Column(name = "cutoff_date")
    private LocalDate cutoffDate;

    @Column(name = "payment_date")
    private LocalDate paymentDate;

    @Column(name = "credit_limit", precision = 6, scale = 2)
    private BigDecimal creditLimit;

    @Column(name = "credit_used", precision = 6, scale = 2)
    private BigDecimal creditUsed;

    @ManyToOne
    @JoinColumn(name = "reward_program_id")
    private RewardProgram rewardProgram;

    @Column(name = "reward_amount")
    private Integer rewardAmount;

    @Column(name = "is_active", nullable = false)
    private Boolean isActive;

//    @OneToMany(mappedBy = "card")
//    private Set<BankAccount> bankAccounts;
}
