package com.project.banking.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "reward_program")
public class RewardProgram {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reward_program_id")
    private Long id;

    @Column(name = "reward_program_name", nullable = false, length = 32)
    private String name;
}
