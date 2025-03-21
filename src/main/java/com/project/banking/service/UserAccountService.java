package com.project.banking.service;

import com.project.banking.model.UserAccount;

public interface UserAccountService {

    UserAccount findUserAccountByUserName(String userName);

}
