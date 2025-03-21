package com.project.banking.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "person")
public class Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "person_id")
    private Long id;

    @Column(name = "DPI", nullable = false, length = 32)
    private String dpi;

    @Column(name = "NIT", nullable = false, length = 32)
    private String nit;

    @Column(name = "first_name", nullable = false, length = 32)
    private String firstName;

    @Column(name = "second_name", nullable = true, length = 32)
    private String secondName;

    @Column(name = "last_name", nullable = false, length = 32)
    private String lastName;

    @Column(name = "second_last_name", nullable = true, length = 32)
    private String secondLastName;

    @Column(name = "address", nullable = false, length = 256)
    private String address;

    @Column(name = "phone_number", nullable = false, length = 32)
    private String phoneNumber;

    @Column(name = "email_address", nullable = false, length = 128)
    private String emailAddress;

    @Column(name = "created_date", nullable = false)
    private LocalDateTime createdDate;

    @Column(name = "gender", nullable = true)
    private String gender;

//    @OneToOne(mappedBy = "person")
//    private UserAccount userAccount;

//    @OneToMany(mappedBy = "person")
//    private Set<Card> cards;
//
//    @OneToMany(mappedBy = "person")
//    private Set<BankAccount> bankAccounts;

}
