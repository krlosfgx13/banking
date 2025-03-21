package com.project.banking.repository;

import com.project.banking.model.UserAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAccountRepository extends JpaRepository<UserAccount, Long> {

    UserAccount findByUserName(String username);
    boolean existsByUserName(String userName);
}
