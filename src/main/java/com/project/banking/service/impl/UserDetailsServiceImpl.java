package com.project.banking.service.impl;


import com.project.banking.model.Role;
import com.project.banking.model.UserAccount;
import com.project.banking.model.UserRole;
import com.project.banking.repository.UserAccountRepository;
import com.project.banking.service.UserAccountService;
import com.project.banking.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserAccountRepository userRepository;

    @Autowired
    private UserAccountService userAccountService;

    @Autowired
    private UserRoleService userRoleService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<GrantedAuthority> roleList = new ArrayList<>(List.of());
        UserAccount userAccount = userAccountService.findUserAccountByUserName(username);
        if (userAccount == null) {
            throw new UsernameNotFoundException("User Not Found with username: " + username);
        }
        List<Role> roles = userRoleService.getUserRolesServiceByUserAccountId(userAccount.getId())
                .stream()
                .map(UserRole::getRole)
                .toList();

        roles.forEach(role -> roleList.add(new SimpleGrantedAuthority(role.getRoleName().toString().toUpperCase())));

        return new User(
                userAccount.getUserName(),
                userAccount.getPassword(),
                roleList
        );
    }
}