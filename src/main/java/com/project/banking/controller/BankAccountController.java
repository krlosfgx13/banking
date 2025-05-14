package com.project.banking.controller;

import com.project.banking.dto.request.CreateBankAccountRequest;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.dto.request.TransferMoneyRequest;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.model.BankAccount;
import com.project.banking.service.BankAccountService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

import static com.project.banking.utils.MessageConstants.*;

@RestController
@RequestMapping("api/banking")
@RequiredArgsConstructor
public class BankAccountController {

    private final Logger logger = LoggerFactory.getLogger(BankAccountController.class);

    private final BankAccountService bankAccountService;

    @PostMapping("bank/account/create")
    public ResponseEntity<BaseResponse> createBankAccount(@RequestBody CreateBankAccountRequest request){
        try{
            return new ResponseEntity<>(bankAccountService.createBankAccount(request), HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error(ex.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/bank/account/{id}")
    public ResponseEntity<BankAccount> getBankAccountById(@PathVariable("id") Long id){
        try {
            return new ResponseEntity<>(bankAccountService.getBankAccountById(id),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new BankAccount(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new BankAccount(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/bank/accounts")
    public ResponseEntity<List<BankAccount>> getAllBankAccounts(@PathVariable("id") Long id) {
        try {
            return new ResponseEntity<>(bankAccountService.getAllBankAccounts(),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/bank/accounts/page")
    public ResponseEntity<Page<BankAccount>> getAllBankAccountsPage(
            @RequestParam(name = "pageNo") int pageNo,
            @RequestParam(name = "pageSize") int pageSize){
        try {
            return new ResponseEntity<>(
                    bankAccountService.getBankAccountsPage(PageRequest.of(pageNo-1, pageSize,
                            Sort.by("id").ascending())),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new PageImpl<>(List.of(),
                    PageRequest.of(0, 10), 0),
                    HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new PageImpl<>(List.of(),
                    PageRequest.of(0, 10), 0),
                    HttpStatus.FORBIDDEN);
        }
    }

    @PutMapping
    public ResponseEntity<BaseResponse> updateBankAccount(Long id, @RequestBody BankAccount request){
        try{
            return ResponseEntity.ok(bankAccountService.updateBankAccount(id, request));
        } catch (ValidateRequestException vre) {
            logger.error("BankAccountController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("BankAccountController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @DeleteMapping
    public ResponseEntity<BaseResponse> deleteBankAccount(Long id){
        try{
            return ResponseEntity.ok(bankAccountService.deleteBankAccount(id));
        } catch (ValidateRequestException vre) {
            logger.error("BankAccountController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("BankAccountController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @PostMapping("bank/account/transfer")
    public ResponseEntity<BaseResponse> transferMoney(@RequestBody TransferMoneyRequest request){
        try{
            return new ResponseEntity<>(bankAccountService.transferMoney(
                    bankAccountService.getBankAccountById(request.getFromBankAccountId()),
                    bankAccountService.getBankAccountById(request.getToBankAccountId()),
                    request.getAmountToTransfer()),
                    HttpStatus.OK);

        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error(ex.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }
}
