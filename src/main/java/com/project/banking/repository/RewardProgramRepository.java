package com.project.banking.repository;

import com.project.banking.model.RewardProgram;
import org.hibernate.persister.entity.SingleTableEntityPersister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RewardProgramRepository extends JpaRepository<RewardProgram, Long> {
}
