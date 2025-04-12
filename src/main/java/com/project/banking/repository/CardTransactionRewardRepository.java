package com.project.banking.repository;

import com.project.banking.model.CardTransactionReward;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardTransactionRewardRepository extends JpaRepository<CardTransactionReward, Long> {
}
