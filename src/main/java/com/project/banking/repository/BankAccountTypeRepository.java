package com.project.banking.repository;

import com.project.banking.model.BankAccountType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BankAccountTypeRepository extends JpaRepository<BankAccountType, Long> {
}
