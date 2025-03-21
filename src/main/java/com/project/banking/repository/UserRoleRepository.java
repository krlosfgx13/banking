package com.project.banking.repository;

import com.project.banking.model.Role;
import com.project.banking.model.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {

    List<UserRole> findUserRolesByUserAccountId(Long userAccountId);
}
