package com.project.banking.service.impl;

import com.project.banking.dto.response.UserAccountResponse;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.UserAccount;
import com.project.banking.repository.UserAccountRepository;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.service.UserAccountService;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import static com.project.banking.utils.MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY;
import static com.project.banking.utils.MessageConstants.SUCCESS;

@Service
@RequiredArgsConstructor
public class UserAccountServiceImpl implements UserAccountService {

    private final UserAccountRepository userRepository;

    @Override
    public List<UserAccountResponse> getAllUserAccounts() {
        List<UserAccount> users = userRepository.findAll();

        return users.stream()
                .map(user -> (UserAccountResponse) UserAccountResponse.builder()
                        .status(SUCCESS)
                        .message(OPERATION_PERFORMED_SUCCESSFULLY)
                        .id(user.getId())
                        .userName(user.getUserName())
                        .person(user.getPerson())
                        .createdDate(user.getCreatedDate())
                        .build())
                .toList();
    }

    @Override
    public UserAccountResponse getUserAccountById(Long id) {
        UserAccount user = userRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));

        return UserAccountResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .id(user.getId())
                .userName(user.getUserName())
                .createdDate(user.getCreatedDate())
                .isActive(user.getIsActive())
                .person(user.getPerson())
                .build();
    }

    @Override
    public Page<UserAccountResponse> getUserAccountsPage(Pageable pageable) {
        Page<UserAccount> userPage = userRepository.findAll(pageable);

        return userPage.map(user ->
                UserAccountResponse.builder()
                        .status(SUCCESS)
                        .message(OPERATION_PERFORMED_SUCCESSFULLY)
                        .id(user.getId())
                        .userName(user.getUserName())
                        .createdDate(user.getCreatedDate())
                        .isActive(user.getIsActive())
                        .person(user.getPerson())
                        .build());
    }

    @Override
    public BaseResponse updateUserAccount(Long id, UserAccount request) {
        UserAccount user = userRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
        user.setUserName(Objects.isNull(request.getUserName()) ? user.getUserName() : request.getUserName());
        user.setIsActive(Objects.isNull(request.getIsActive()) ? user.getIsActive() : request.getIsActive());
        //user.setPassword(encoder.encode(request.getPassword()));
        //user.setPassword(Objects.isNull(request.getPassword()) ? user.getPassword() : request.getPassword());
        userRepository.save(user);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse deleteUserAccount(Long id) {
        UserAccount user = userRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
        userRepository.delete(user);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public UserAccountResponse findUserAccountByUserName(String userName) {
        UserAccount user = userRepository.findByUserName(userName);

        return UserAccountResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .id(user.getId())
                .userName(user.getUserName())
                .createdDate(user.getCreatedDate())
                .isActive(user.getIsActive())
                .person(user.getPerson())
                .build();
    }

    @Override
    public UserAccount findUserAccountByUserNameModel(String userName) {
        return userRepository.findByUserName(userName);
    }
}
