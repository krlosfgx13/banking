package com.project.banking.service;

import com.project.banking.model.UserRole;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserRoleService {

    List<UserRole> getUserRolesServiceByUserAccountId(Long userAccountId);
}
