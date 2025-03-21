package com.project.banking.service.impl;

import com.project.banking.model.UserAccount;
import com.project.banking.repository.UserAccountRepository;
import com.project.banking.service.UserAccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserAccountServiceImpl implements UserAccountService {

    private final UserAccountRepository userRepository;

    @Override
    public UserAccount findUserAccountByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }
}
