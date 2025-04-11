package com.project.banking.controller;

import com.project.banking.exception.ValidateRequestException;
import com.project.banking.request.PayCreditCardRequest;
import com.project.banking.response.BaseResponse;
import com.project.banking.service.CardService;
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
public class CreditCardController {

    private final CardService cardService;
    private final Logger logger = LoggerFactory.getLogger(CreditCardController.class);

    @PostMapping("card/payment")
    public ResponseEntity<BaseResponse> processPayment(@RequestBody PayCreditCardRequest request){
        try{
            return new ResponseEntity<>(cardService.payCreditCard(
                    cardService.getBankAccount(request.getBankAccountId()),
                    cardService.getCreditCard(request.getCreditCardId()),
                    request.getAmountToPay()),
                    HttpStatus.OK);

        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(vre.getMessage())
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
