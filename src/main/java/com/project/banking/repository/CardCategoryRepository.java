package com.project.banking.repository;

import com.project.banking.model.CardCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardCategoryRepository extends JpaRepository<CardCategory, Long> {
}
