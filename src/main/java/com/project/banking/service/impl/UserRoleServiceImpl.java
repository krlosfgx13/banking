package com.project.banking.service.impl;

import com.project.banking.model.UserRole;
import com.project.banking.repository.UserRoleRepository;
import com.project.banking.service.UserRoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserRoleServiceImpl implements UserRoleService {

    private final UserRoleRepository userRoleRepository;

    @Override
    public List<UserRole> getUserRolesServiceByUserAccountId(Long userAccountId) {
        return userRoleRepository.findUserRolesByUserAccountId(userAccountId);
    }
}
