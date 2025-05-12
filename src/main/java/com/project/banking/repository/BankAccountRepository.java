package com.project.banking.repository;

import com.project.banking.model.BankAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface BankAccountRepository extends JpaRepository<BankAccount, Long> {

    @Query(value = "select bank_account_number from bank_account order by bank_account_id desc offset 0 rows fetch next 1 row only", nativeQuery = true)
    String getLastBankAccountNumber();
    Optional<BankAccount> findByCardId(Long cardId);
}
