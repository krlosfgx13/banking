package com.project.banking;

import com.flextrade.jfixture.JFixture;
import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.model.*;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.repository.CardRepository;
import com.project.banking.repository.CardTransactionRepository;
import com.project.banking.dto.request.CardTransactionRequest;
import com.project.banking.service.impl.CardTransactionServiceImpl;
import com.project.banking.utils.CardConstants;
import com.project.banking.utils.MessageConstants;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class BankingTests {

    @InjectMocks
    CardTransactionServiceImpl cardTransactionService;

    @Mock
    CardRepository cardRepository;

    @Mock
    CardTransactionRepository cardTransactionRepository;

    @Mock
    BankAccountRepository bankAccountRepository;

    @Test
    @DisplayName("Process payment with a card that cannot be found.")
    public void processPaymentWithNonExistentCard() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .build();

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.empty());

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.CARD_DOES_NOT_EXIST, response.getMessage());
    }

    @Test
    @DisplayName("Process payment with an inactive card.")
    public void processPaymentWithInactiveCard() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .build();

        //var card = mock(Card.class);
        var card = new Card();
        card.setIsActive(false);

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.INACTIVE_OR_EXPIRED_CARD, response.getMessage());
    }

    @Test
    @DisplayName("Process payment with an expired card.")
    public void processPaymentWithExpiredCard() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .build();

        //var card = mock(Card.class);
        var card = new Card();
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2025, 3, 31));

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.INACTIVE_OR_EXPIRED_CARD, response.getMessage());
    }

    @Test
    @DisplayName("Process successful payment with Credit Card.")
    public void processSuccessfulCreditCardPayment() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);
        var cardType = CardTypeEnum.CREDIT.getName();

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .cardType(cardType)
                .transactionAmount(new BigDecimal("750.00"))
                .build();

        //var card = mock(Card.class);
        var cardCategory = CardCategory.builder()
                .cardCategoryName("Classic")
                .build();

        var card = new Card();
        card.setCreditUsed(new BigDecimal("1000.00"));
        card.setCreditLimit(new BigDecimal("10000.00"));
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));
        card.setRewardAmount(100);
        card.setCardCategory(cardCategory);

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));
        when(cardRepository.save(any())).thenReturn(mock(Card.class));
        when(cardTransactionRepository.save(any())).thenReturn(mock(CardTransaction.class));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.SUCCESS, response.getStatus());
        assertEquals(MessageConstants.TRANSACTION_APPROVED, response.getMessage());
    }

    @Test
    @DisplayName("Process unsuccessful payment with credit card due to insufficient credit.")
    public void processCreditCardPaymentWithInsufficientCredit() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);
        var cardType = CardTypeEnum.CREDIT.getName();

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .cardType(cardType)
                .transactionAmount(new BigDecimal("11750.00"))
                .build();

        //var card = mock(Card.class);
        var cardCategory = CardCategory.builder()
                .cardCategoryName("Classic")
                .build();

        var card = new Card();
        card.setCreditUsed(new BigDecimal("1000.00"));
        card.setCreditLimit(new BigDecimal("10000.00"));
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));
        card.setRewardAmount(100);
        card.setCardCategory(cardCategory);

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.INSUFFICIENT_CREDIT, response.getMessage());
    }

    @Test
    @DisplayName("Process successful payment with debit card.")
    public void processSuccessfulDebitCardPayment() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);
        var cardType = CardTypeEnum.DEBIT.getName();

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .cardType(cardType)
                .transactionAmount(new BigDecimal("750.00"))
                .build();

        var bankAccount = BankAccount.builder()
                .isActive(true)
                .balance(new BigDecimal("15000.00"))
                .build();

        var card = new Card();
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));
        when(bankAccountRepository.findByCardId(any())).thenReturn(Optional.of(bankAccount));
        when(bankAccountRepository.save(any())).thenReturn(mock(BankAccount.class));
        when(cardTransactionRepository.save(any())).thenReturn(mock(CardTransaction.class));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.SUCCESS, response.getStatus());
        assertEquals(MessageConstants.TRANSACTION_APPROVED, response.getMessage());
    }

    @Test
    @DisplayName("Process unsuccessful payment with debit card associated to non-existent bank account.")
    public void processUnSuccessfulDebitCardPaymentWithNonExistentBankAccount() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);
        var cardType = CardTypeEnum.DEBIT.getName();

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .cardType(cardType)
                .transactionAmount(new BigDecimal("750.00"))
                .build();

        var card = new Card();
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));
        when(bankAccountRepository.findByCardId(any())).thenReturn(Optional.empty());

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.BANK_ACCOUNT_DOES_NOT_EXIST, response.getMessage());
    }

    @Test
    @DisplayName("Process unsuccessful payment with debit card due to insufficient funds.")
    public void processDebitCardPaymentWithInsufficientFunds() {
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);
        var cardType = CardTypeEnum.DEBIT.getName();

        var request = CardTransactionRequest.builder()
                .cardNumber(cardNumber)
                .cardType(cardType)
                .transactionAmount(new BigDecimal("7500.00"))
                .build();

        var bankAccount = BankAccount.builder()
                .isActive(true)
                .balance(new BigDecimal("7450.00"))
                .build();

        var card = new Card();
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));
        when(bankAccountRepository.findByCardId(any())).thenReturn(Optional.of(bankAccount));

        //Act
        var response = cardTransactionService.processPayment(request);

        //Assert
        assertEquals(MessageConstants.FAILED, response.getStatus());
        assertEquals(MessageConstants.INSUFFICIENT_FUNDS, response.getMessage());
    }

    @Test
    @DisplayName("Calculate reward accumulation per category.")
    public void calculateRewardsPerCategory(){
        /*
         * (amount / 8) * 1 = CLASSIC
         * (amount / 8) * 1.25 = GOLD
         * (amount / 8) * 1.5 = PLATINUM
         * (amount / 8) * 2 =  BLACK
         * */
        var classicCard = Card.builder()
                .cardCategory(CardCategory.builder()
                        .cardCategoryName(CardConstants.CLASSIC_CARD)
                        .build())
                .build();

        var goldCard = Card.builder()
                .cardCategory(CardCategory.builder()
                        .cardCategoryName(CardConstants.GOLD_CARD)
                        .build())
                .build();

        var platinumCard = Card.builder()
                .cardCategory(CardCategory.builder()
                        .cardCategoryName(CardConstants.PLATINUM_CARD)
                        .build())
                .build();

        var blackCard = Card.builder()
                .cardCategory(CardCategory.builder()
                        .cardCategoryName(CardConstants.BLACK_CARD)
                        .build())
                .build();

        assertEquals(1250, cardTransactionService.calculatePointAccumulation(classicCard, new BigDecimal("10000.00")));
        assertEquals(1562, cardTransactionService.calculatePointAccumulation(goldCard, new BigDecimal("10000.00")));
        assertEquals(1875, cardTransactionService.calculatePointAccumulation(platinumCard, new BigDecimal("10000.00")));
        assertEquals(2500, cardTransactionService.calculatePointAccumulation(blackCard, new BigDecimal("10000.00")));
    }

    @Test
    @DisplayName("Query reward amount of a credit card.")
    public void queryCreditCardRewardAmount(){
        var fixture = new JFixture();
        var cardNumber = fixture.create(String.class);

        var card = new Card();
        card.setIsActive(true);
        card.setExpirationDate(LocalDate.of(2028, 3, 31));
        card.setCardType(CardType.builder()
                .name("Credit")
                .build());
        card.setRewardAmount(10000);

        //Arrange
        when(cardRepository.findByCardNumber(any())).thenReturn(Optional.of(card));

        //Act
        var response = cardTransactionService.queryRewardAmount(cardNumber);

        //Assert
        assertEquals(MessageConstants.SUCCESS, response.getStatus());
        assertEquals(MessageConstants.TRANSACTION_APPROVED, response.getMessage());
        assertEquals(new BigDecimal("600.00"), response.getMoneyAmount());
        assertEquals(10000, response.getRewardAmount());
    }
}
