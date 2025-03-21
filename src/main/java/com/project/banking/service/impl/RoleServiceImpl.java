package com.project.banking.service.impl;

import com.project.banking.model.Role;
import com.project.banking.repository.RoleRepository;
import com.project.banking.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Override
    public List<Role> getRoles(List<String> listOfRoles) {
        return roleRepository.findRoles(listOfRoles);
    }
}
