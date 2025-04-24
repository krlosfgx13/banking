package com.project.banking.controller;

import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.CardTransaction;
import com.project.banking.dto.request.CardTransactionRequest;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.QueryRewardResponse;
import com.project.banking.serialization.CardTransactionsByUser;
import com.project.banking.serialization.CompanyCategoryDetail;
import com.project.banking.service.CardService;
import com.project.banking.service.CardTransactionService;
import com.project.banking.utils.MessageConstants;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.apache.commons.lang3.StringUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/banking")
public class CardTransactionController {

    private final CardTransactionService cardTransactionService;
    private final CardService cardService;
    private static final Logger logger = LoggerFactory.getLogger(CardTransactionController.class);

    //Just example. Should go on another project.
    @GetMapping("company/category")
    public ResponseEntity<List<CompanyCategoryDetail>> getCompanyCategoryDetail(){
        try{
            List<CompanyCategoryDetail> companyCategoryDetails = cardTransactionService.getCompanyCategoryDetail();
            return new ResponseEntity<>(companyCategoryDetails, HttpStatus.OK);
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @PostMapping("card/transaction")
    public ResponseEntity<BaseResponse> processPayment(@RequestBody CardTransactionRequest request){
        try{
            validateRequest(request);
            return new ResponseEntity<>(cardTransactionService.processPayment(request), HttpStatus.OK);

        } catch (ValidateRequestException vre) {
            vre.printStackTrace();
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(vre.getMessage())
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @PostMapping("card/transaction/points")
    public ResponseEntity<BaseResponse> processPaymentWithPoints(@RequestBody CardTransactionRequest request){
        try{
            validateRequest(request);
            return new ResponseEntity<>(cardTransactionService.processPaymentWithPoints(
                    request.getCardNumber(),
                    request.getTransactionAmount()),
                    HttpStatus.OK);

        } catch (ValidateRequestException vre) {
//            logger.error(vre.getMessage());
//            logger.error("Validation failed", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("CardTransactionController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("card/transaction/points/query/{cardNumber}")
    public ResponseEntity<QueryRewardResponse> queryRewardAmount(@PathVariable("cardNumber") String cardNumber){
        try{
            return new ResponseEntity<>(cardTransactionService.queryRewardAmount(cardNumber),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(QueryRewardResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            return new ResponseEntity<>(QueryRewardResponse
                    .builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("card/transaction/{id}")
    public ResponseEntity<CardTransaction> getCardTransaction(@PathVariable("id") Long id){
        try{
            return new ResponseEntity<>(cardTransactionService.getCardTransaction(id), HttpStatus.OK);
        } catch (Exception ex){
            return new ResponseEntity<>(CardTransaction.builder().build(), HttpStatus.NO_CONTENT);
        }
    }

    @GetMapping("card/transactions")
    public ResponseEntity<List<CardTransaction>> getCardTransactions(){
        try{
            return new ResponseEntity<>(cardTransactionService.getCardTransactions(), HttpStatus.OK);
        } catch (Exception ex){
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.NO_CONTENT);
        }
    }

    @GetMapping("card/transactions/date")
    public ResponseEntity<List<CardTransaction>> getCardTransactionsByDateRange(@RequestParam LocalDate startDate, @RequestParam LocalDate endDate){
        try{
            LocalDateTime start = startDate.atStartOfDay();
            LocalDateTime end = endDate.atTime(23, 59, 59);
            return new ResponseEntity<>(cardTransactionService.getCardTransactionByDateRange(start, end), HttpStatus.OK);
        } catch (Exception ex){
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.NO_CONTENT);
        }
    }

    @GetMapping("card/transactions/date/page")
    public ResponseEntity<Page<CardTransaction>> getCardTransactionPageByDateRange(@RequestParam(name = "startDate") LocalDate startDate,
                                                                                   @RequestParam LocalDate endDate,
                                                                                   @RequestParam(name = "pageNo") int pageNo,
                                                                                   @RequestParam int pageSize) {
        try {
            return new ResponseEntity<>(
                    cardTransactionService.getCardTransactionPageByDateRange(
                            pageNo-1,
                            pageSize,
                            startDate.atStartOfDay(),
                            endDate.atTime(23, 59, 59)),
                    HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity<>(Page.empty(), HttpStatus.NO_CONTENT);
        }
    }

    @GetMapping("card/transactions/user")
    public ResponseEntity<List<CardTransactionsByUser>> getCardTransactionsByUser(@RequestParam String userName){
        try{
            return new ResponseEntity<>(cardTransactionService.getCardTransactionsByUser(userName), HttpStatus.OK);
        } catch (Exception ex){
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.NO_CONTENT);
        }
    }

    private void validateRequest(CardTransactionRequest request){
        if (Objects.isNull(request.getTransactionAmount())){
            throw new ValidateRequestException("Incorrect amount.");
        }
        if(!StringUtils.isNotEmpty(request.getCardNetwork())){
            throw new ValidateRequestException("Card Network cannot be empty");
        }
        if(!StringUtils.isNotEmpty(request.getCompanyName())){
            throw new ValidateRequestException("Company Name cannot be empty");
        }
        if(!StringUtils.isNotEmpty(request.getCompanyCategory())){
            throw new ValidateRequestException("Company Category cannot be empty");
        }
        if(!StringUtils.isNotEmpty(request.getCardType())){
            throw new ValidateRequestException("Card Type cannot be empty");
        }
    }
}
