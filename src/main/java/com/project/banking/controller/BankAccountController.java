package com.project.banking.controller;

import com.project.banking.exception.ValidateRequestException;
import com.project.banking.request.TransferMoneyRequest;
import com.project.banking.response.BaseResponse;
import com.project.banking.service.BankAccountService;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/banking")
@RequiredArgsConstructor
public class BankAccountController {

    private final Logger logger = LoggerFactory.getLogger(BankAccountController.class);

    private final BankAccountService bankAccountService;

    @PostMapping("account/transfer")
    public ResponseEntity<BaseResponse> processPayment(@RequestBody TransferMoneyRequest request){
        try{
            return new ResponseEntity<>(bankAccountService.transferMoney(
                    bankAccountService.getBankAccount(request.getToBankAccountId()),
                    bankAccountService.getBankAccount(request.getToBankAccountId()),
                    request.getAmountToTransfer()),
                    HttpStatus.OK);

        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error(ex.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }
}
