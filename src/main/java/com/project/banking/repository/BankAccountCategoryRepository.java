package com.project.banking.repository;

import com.project.banking.model.BankAccountCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BankAccountCategoryRepository extends JpaRepository<BankAccountCategory, Long> {
}
