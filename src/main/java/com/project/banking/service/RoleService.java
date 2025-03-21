package com.project.banking.service;

import com.project.banking.model.Role;

import java.util.List;

public interface RoleService {

    List<Role> getRoles(List<String> listOfRoles);
}
