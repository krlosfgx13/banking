package com.project.banking.controller;

import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.GenericResponse;
import com.project.banking.dto.response.UserAccountResponse;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.UserAccount;
import com.project.banking.service.UserAccountService;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.project.banking.utils.MessageConstants.INVALID_REQUEST_DATA;
import static com.project.banking.utils.MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY;

@RestController
@RequestMapping("api/banking")
@RequiredArgsConstructor
public class UserAccountController {

    private final UserAccountService userAccountService;
    private static final Logger logger = LoggerFactory.getLogger(UserAccountController.class);

    @GetMapping("/user/{id}")
    public ResponseEntity<UserAccountResponse> getUserAccountById(@PathVariable("id") Long id){
        try {
            return new ResponseEntity<>(userAccountService.getUserAccountById(id),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(UserAccountResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            return new ResponseEntity<>(UserAccountResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/user/userName")
    public ResponseEntity<UserAccountResponse> getUserAccountByUserName(
            @RequestParam(name = "userName", required = true) String userName){
        try {
            return new ResponseEntity<>(userAccountService.findUserAccountByUserName(userName),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(UserAccountResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            return new ResponseEntity<>(UserAccountResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/users")
    public ResponseEntity<GenericResponse<List<UserAccountResponse>>> getAllUsers(){
        try{
            List<UserAccountResponse> users = userAccountService.getAllUserAccounts();
            return ResponseEntity.ok(
                    GenericResponse.<List<UserAccountResponse>>builder()
                            .status(MessageConstants.SUCCESS)
                            .message(OPERATION_PERFORMED_SUCCESSFULLY)
                            .data(users)
                            .build()
            );
        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            logger.error("Exception details", vre);
            return new ResponseEntity<>(
                    GenericResponse.<List<UserAccountResponse>>builder()
                            .status(MessageConstants.FAILED)
                            .message(INVALID_REQUEST_DATA)
                            .build(), HttpStatus.BAD_REQUEST
            );
        } catch (Exception ex){
            logger.error(ex.getMessage());
            logger.error("Exception details", ex);
            return new ResponseEntity<>(
                    GenericResponse.<List<UserAccountResponse>>builder()
                            .status(MessageConstants.SUCCESS)
                            .message(OPERATION_PERFORMED_SUCCESSFULLY)
                            .build(), HttpStatus.OK
            );
        }
    }


    @GetMapping("/users/page")
    public ResponseEntity<GenericResponse<Page<UserAccountResponse>>> getUserAccountsPage(
            @RequestParam(name = "pageNo") int pageNo,
            @RequestParam(name = "pageSize") int pageSize){
        try {
            Page<UserAccountResponse> page = userAccountService.getUserAccountsPage(
                    PageRequest.of(pageNo-1, pageSize,
                            Sort.by("id").ascending()));

            return ResponseEntity.ok(
                    GenericResponse.<Page<UserAccountResponse>>builder()
                            .status(MessageConstants.SUCCESS)
                            .message(OPERATION_PERFORMED_SUCCESSFULLY)
                            .data(page)
                            .build()
            );
        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            logger.error("Exception details", vre);
            return new ResponseEntity<>(
                    GenericResponse.<Page<UserAccountResponse>>builder()
                            .status(MessageConstants.FAILED)
                            .message(INVALID_REQUEST_DATA)
                            .build(), HttpStatus.BAD_REQUEST
            );
        } catch (Exception ex){
            logger.error(ex.getMessage());
            logger.error("Exception details", ex);
            return new ResponseEntity<>(
                    GenericResponse.<Page<UserAccountResponse>>builder()
                            .status(MessageConstants.SUCCESS)
                            .message(OPERATION_PERFORMED_SUCCESSFULLY)
                            .build(), HttpStatus.OK
            );
        }
    }

    @PutMapping("/user/{id}")
    public ResponseEntity<BaseResponse> updateUser(@PathVariable Long id, @RequestBody UserAccount request){
        try{
            return ResponseEntity.ok(userAccountService.updateUserAccount(
                    id,
                    request));
        } catch (ValidateRequestException vre) {
            logger.error("UserAccountController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("UserAccountController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @DeleteMapping("/user/{id}")
    public ResponseEntity<BaseResponse> delete(@PathVariable Long id){
        try{
            return ResponseEntity.ok(userAccountService.deleteUserAccount(id));
        } catch (ValidateRequestException vre) {
            logger.error("UserAccountController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("UserAccountController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }
}
