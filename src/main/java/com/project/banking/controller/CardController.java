package com.project.banking.controller;

import com.project.banking.dto.request.CreateCreditCardRequest;
import com.project.banking.enumerator.CardNetworkEnum;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.dto.request.PayCreditCardRequest;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.model.Card;
import com.project.banking.service.BankAccountService;
import com.project.banking.service.CardService;
import com.project.banking.utils.MessageConstants;
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
public class CardController {

    private final CardService cardService;
    private final BankAccountService bankAccountService;
    private final Logger logger = LoggerFactory.getLogger(CardController.class);

    @PostMapping("card/payment")
    public ResponseEntity<BaseResponse> processPayment(@RequestBody PayCreditCardRequest request){
        try{
            return new ResponseEntity<>(cardService.payCreditCard(
                    bankAccountService.getBankAccountById(request.getBankAccountId()),
                    cardService.getCardById(request.getCreditCardId()),
                    request.getAmountToPay()),
                    HttpStatus.OK);

        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(vre.getMessage())
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

    @PostMapping("card/create")
    public ResponseEntity<BaseResponse> createCreditCard(@RequestBody CreateCreditCardRequest request){
        try{
            return new ResponseEntity<>(cardService.createCreditCard(request,
                    CardNetworkEnum.VISA.getId() == request.getCardNetworkId()
                            ? CardNetworkEnum.VISA
                            : CardNetworkEnum.MASTERCARD),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            logger.error(vre.getMessage());
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(vre.getMessage())
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

    @GetMapping("/card/{id}")
    public ResponseEntity<Card> getCardById(@PathVariable("id") Long id) {
        try {
            return new ResponseEntity<>(cardService.getCardById(id),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new Card(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new Card(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("card/number")
    public ResponseEntity<Card> getCardByNumber(
            @RequestParam(name = "cardNumber") String cardNumber){
        try {
            return new ResponseEntity<>(cardService.getCardByNumber(cardNumber),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new Card(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new Card(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/cards")
    public ResponseEntity<List<Card>> getAllPeople() {
        try {
            return new ResponseEntity<>(cardService.getAllCards(),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/cards/page")
    public ResponseEntity<Page<Card>> getAllPeoplePage(
            @RequestParam(name = "pageNo") int pageNo,
            @RequestParam(name = "pageSize") int pageSize){
        try {
            return new ResponseEntity<>(
                    cardService.getAllCardsPage(PageRequest.of(pageNo-1, pageSize,
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

    @PutMapping("/card/{id}")
    public ResponseEntity<BaseResponse> updateCard(Long id, @RequestBody Card request){
        try{
            return ResponseEntity.ok(cardService.updateCard(id, request));
        } catch (ValidateRequestException vre) {
            logger.error("CardController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("CardController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @DeleteMapping("/card/{id}")
    public ResponseEntity<BaseResponse> deletePerson(Long id){
        try{
            return ResponseEntity.ok(cardService.deleteCard(id));
        } catch (ValidateRequestException vre) {
            logger.error("CardController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("CardController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }
}
