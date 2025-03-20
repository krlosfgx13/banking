package com.project.banking.repository;

import com.project.banking.model.CardTransaction;
import com.project.banking.serialization.CardTransactionsByUser;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface CardTransactionRepository extends JpaRepository<CardTransaction, Long> {

    @Query("SELECT t FROM CardTransaction t WHERE t.transactionDate BETWEEN :startDate and :endDate ORDER BY transactionDate ASC")
    List<CardTransaction> findCardTransactionsByDateRange(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);

    @Query("SELECT t FROM CardTransaction t WHERE t.transactionDate BETWEEN :startDate and :endDate ORDER BY transactionDate ASC")
    Page<CardTransaction> getCardTransactionPageByDateRange(Pageable pageable, @Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}
