package com.project.banking.repository;

import com.project.banking.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

    @Query("SELECT r FROM Role r WHERE r.roleName  in :listOfRoles")
    List<Role> findRoles(@Param("listOfRoles") List<String> listOfRoles);
}
