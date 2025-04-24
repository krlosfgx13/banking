package com.project.banking.service;

import com.project.banking.dto.response.UserAccountResponse;
import com.project.banking.model.UserAccount;
import com.project.banking.dto.response.BaseResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserAccountService {

    List<UserAccountResponse> getAllUserAccounts();
    UserAccountResponse getUserAccountById(Long id);
    Page<UserAccountResponse> getUserAccountsPage(Pageable pageable);
    BaseResponse updateUserAccount(Long id, UserAccount request);
    BaseResponse deleteUserAccount(Long id);
    UserAccountResponse findUserAccountByUserName(String userName);
    UserAccount findUserAccountByUserNameModel(String userName);

}
