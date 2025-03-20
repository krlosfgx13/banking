package com.project.banking.repository;

import com.project.banking.model.CardNetwork;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardNetworkRepository extends JpaRepository<CardNetwork, Long> {
}
