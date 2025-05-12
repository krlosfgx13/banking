package com.project.banking.service.impl;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.project.banking.enumerator.CardTypeEnum;
import com.project.banking.model.BankAccount;
import com.project.banking.model.Card;
import com.project.banking.model.CardTransaction;
import com.project.banking.model.CardTransactionReward;
import com.project.banking.repository.BankAccountRepository;
import com.project.banking.repository.CardRepository;
import com.project.banking.repository.CardTransactionRepository;
import com.project.banking.repository.CardTransactionRewardRepository;
import com.project.banking.dto.request.CardTransactionRequest;
import com.project.banking.dto.response.BaseResponse;
import com.project.banking.dto.response.QueryRewardResponse;
import com.project.banking.serialization.CardTransactionsByUser;
import com.project.banking.serialization.CompanyCategoryDetail;
import com.project.banking.service.CardTransactionService;
import com.project.banking.utils.CardConstants;
import com.project.banking.utils.MessageConstants;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import okhttp3.*;

import static com.project.banking.enumerator.CardTypeEnum.CREDIT;


@Service
@RequiredArgsConstructor
public class CardTransactionServiceImpl implements CardTransactionService {

    private final CardRepository cardRepository;
    private final BankAccountRepository bankAccountRepository;
    private final CardTransactionRepository cardTransactionRepository;
    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final CardTransactionRewardRepository cardTransactionRewardRepository;
    private static final Logger logger = LoggerFactory.getLogger(CardTransactionServiceImpl.class);

    @Override
    public BaseResponse processPayment(CardTransactionRequest request) {
        Optional<Card> optionalCard = cardRepository.findByCardNumber(request.getCardNumber());

        if (optionalCard.isEmpty()) {
            return createResponse(MessageConstants.FAILED,MessageConstants.CARD_DOES_NOT_EXIST);
        }

        Card card = optionalCard.get();

        if (!validateCardInfo(card)) {
            return createResponse("FAILED","Invalid card information: Inactive or Expired.");
        }

        if(request.getCardType().equals(CREDIT.getName())){
            if (!validateTransactionRequest(card, request))
                return createResponse("FAILED","Invalid transaction: Missing required credit details.");
            return creditCardPayment(card, request);
        }
        else
            return debitCardPayment(card, request);
    }

    @Transactional
    @Override
    public BaseResponse processPaymentWithPoints(String cardNumber, BigDecimal transactionAmount) {
        logger.info("Starting processPaymentWithPoints() method.");
        Optional<Card> optionalCard = cardRepository.findByCardNumber(cardNumber);

        if (optionalCard.isEmpty())
            return createResponse(MessageConstants.FAILED, MessageConstants.CARD_DOES_NOT_EXIST);

        Card card = optionalCard.get();

        if (!validateCardInfo(card))
            return createResponse(MessageConstants.FAILED, MessageConstants.INACTIVE_OR_EXPIRED_CARD);

        if(!card.getCardType().getName().equals(CardTypeEnum.CREDIT.getName()))
            return createResponse(MessageConstants.FAILED, MessageConstants.NOT_CREDIT_CARD);

        BigDecimal rewardMoneyAmount = rewardMoneyAmount(card.getRewardAmount());

        if(transactionAmount.compareTo(rewardMoneyAmount) <= 0){
            int transactionInRewardPoints = (int) (transactionAmount.intValue() * 16.66);
            card.setRewardAmount(card.getRewardAmount() - transactionInRewardPoints);
            cardRepository.save(card);
            cardTransactionRewardRepository.save(CardTransactionReward.builder()
                    .card(card) //test: if commented out without @Transactional, it misbehaves. no atomic transaction.
                    .transactionAmount(transactionAmount)
                    .rewardAmount(transactionInRewardPoints)
                    .transactionDate(LocalDateTime.now())
                    .build());

            return BaseResponse.builder()
                    .status(MessageConstants.SUCCESS)
                    .message(MessageConstants.TRANSACTION_APPROVED)
                    .build();
        } else{
            return BaseResponse.builder()
                    .status(MessageConstants.FAILED)
                    .message(MessageConstants.INSUFFICIENT_FUNDS)
                    .build();
        }
    }

    @Override
    public QueryRewardResponse queryRewardAmount(String cardNumber) {
        Optional<Card> optionalCard = cardRepository.findByCardNumber(cardNumber);

        if (optionalCard.isEmpty())
            return (QueryRewardResponse) createResponse(MessageConstants.FAILED, MessageConstants.CARD_DOES_NOT_EXIST);

        Card card = optionalCard.get();

        if (!validateCardInfo(card))
            return (QueryRewardResponse) createResponse(MessageConstants.FAILED, MessageConstants.INACTIVE_OR_EXPIRED_CARD);

        if(!card.getCardType().getName().equals(CardTypeEnum.CREDIT.getName()))
            return (QueryRewardResponse) createResponse(MessageConstants.FAILED, MessageConstants.NOT_CREDIT_CARD);

        return QueryRewardResponse.builder()
                .status(MessageConstants.SUCCESS)
                .message(MessageConstants.TRANSACTION_APPROVED)
                .cardNumber(cardNumber)
                .rewardAmount(card.getRewardAmount())
                .moneyAmount(rewardMoneyAmount(card.getRewardAmount()))
                .build();
    }

    @Override
    public List<CompanyCategoryDetail> getCompanyCategoryDetail() {
        Gson gson = new Gson();
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder()
                .url("http://localhost:8081/api/pos/companies")
                .get()
                .build();

        try (Response response = client.newCall(request).execute()) {
            if (response.isSuccessful() && response.body() != null) {
                Type companyCategoryType = new TypeToken <List<CompanyCategoryDetail>>() {}.getType();
                List<CompanyCategoryDetail> companyCategoryDetails = gson.fromJson(response.body().string(), companyCategoryType);
                System.out.println("GET User: " + gson.toJson(companyCategoryDetails));
                return companyCategoryDetails;
            } else {
                System.out.println("GET Failed: " + response.code());
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public CardTransaction getCardTransaction(Long id) {
        return cardTransactionRepository.findById(id).orElseGet(() -> CardTransaction.builder().build());
    }

    @Override
    public List<CardTransaction> getCardTransactions() {
        return cardTransactionRepository.findAll();
    }

    @Override
    public List<CardTransaction> getCardTransactionByDateRange(LocalDateTime startDate, LocalDateTime endDate) {
        return cardTransactionRepository.findCardTransactionsByDateRange(startDate, endDate);
    }

    @Override
    public Page<CardTransaction> getCardTransactionPageByDateRange(int pageNo, int pageSize, LocalDateTime startDate, LocalDateTime endDate) {
        Pageable pageable = PageRequest.of(pageNo, pageSize);
        return cardTransactionRepository.getCardTransactionPageByDateRange(pageable, startDate, endDate);
    }

    @Override
    public List<CardTransactionsByUser> getCardTransactionsByUser(String userName) {
        String selectStatement = "select ct.card_transaction_id, ct.company_name, ct.company_category, ct.transaction_amount, ct.transaction_date,\n" +
                "c.card_id, c.card_number, p.person_id, u.user_name\n" +
                "from card_transaction ct \n" +
                "join card c on ct.card_id = c.card_id\n" +
                "join person p on c.person_id = p.person_id\n" +
                "join user_account u on p.person_id = u.person_id\n" +
                "where u.user_name = :userName\n" +
                "order by ct.transaction_date desc";
        SqlParameterSource params = new MapSqlParameterSource("userName", userName);
        return jdbcTemplate.query(selectStatement, params,
                new BeanPropertyRowMapper<>(CardTransactionsByUser.class));
    }

    @Override
    public int calculatePointAccumulation(Card card, BigDecimal transactionAmount) {
        return accumPoints(card, transactionAmount);
    }

    private static int accumulatePointsOrMiles(Card card, BigDecimal transactionAmount){
        /*
         * (amount / 8) * 1 = CLASSIC
         * (amount / 8) * 1.25 = GOLD
         * (amount / 8) * 1.5 = PLATINUM
         * (amount / 8) * 2 =  BLACK
         * */
        int accumulatedPoints = 0;
        switch (card.getCardCategory().getCardCategoryName()){
            case CardConstants.CLASSIC_CARD :
                accumulatedPoints = transactionAmount
                        .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                        .multiply(new BigDecimal(CardConstants.CLASSIC_CARD_REWARD_ACCUMULATION)).intValue();
                break;
            case CardConstants.GOLD_CARD:
                accumulatedPoints = transactionAmount
                        .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                        .multiply(new BigDecimal(CardConstants.GOLD_CARD_REWARD_ACCUMULATION)).intValue();
                break;
            case CardConstants.PLATINUM_CARD:
                accumulatedPoints = transactionAmount
                        .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                        .multiply(new BigDecimal(CardConstants.PLATINUM_CARD_REWARD_ACCUMULATION)).intValue();
                break;
            case CardConstants.BLACK_CARD:
                accumulatedPoints = transactionAmount
                        .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                        .multiply(new BigDecimal(CardConstants.BLACK_CARD_REWARD_ACCUMULATION)).intValue();
                break;
        }
        return accumulatedPoints;
    }

    //with enhanced switch
    private static int accumPoints(Card card, BigDecimal transactionAmount){
        return switch (card.getCardCategory().getCardCategoryName()){
            case CardConstants.CLASSIC_CARD -> transactionAmount
                    .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                    .multiply(new BigDecimal(CardConstants.CLASSIC_CARD_REWARD_ACCUMULATION)).intValue();

            case CardConstants.GOLD_CARD -> transactionAmount
                    .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                    .multiply(new BigDecimal(CardConstants.GOLD_CARD_REWARD_ACCUMULATION)).intValue();

            case CardConstants.PLATINUM_CARD -> transactionAmount
                    .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                    .multiply(new BigDecimal(CardConstants.PLATINUM_CARD_REWARD_ACCUMULATION)).intValue();

            case CardConstants.BLACK_CARD -> transactionAmount
                    .divideToIntegralValue(new BigDecimal(CardConstants.DOLLAR_AMOUNT))
                    .multiply(new BigDecimal(CardConstants.BLACK_CARD_REWARD_ACCUMULATION)).intValue();

            default -> 0;
        };
    }

    private BaseResponse creditCardPayment(Card card, CardTransactionRequest request){
        BigDecimal creditAvailable = card.getCreditLimit().subtract(card.getCreditUsed());

        if (creditAvailable.compareTo(request.getTransactionAmount()) >= 0) {
            card.setCreditUsed(card.getCreditUsed().add(request.getTransactionAmount()));
            card.setRewardAmount(card.getRewardAmount()
                    + accumulatePointsOrMiles(card, request.getTransactionAmount()));
            cardRepository.save(card);
            saveCardTransaction(card, request);
            return createResponse(MessageConstants.SUCCESS, MessageConstants.TRANSACTION_APPROVED);
        } else
            return createResponse(MessageConstants.FAILED,MessageConstants.INSUFFICIENT_CREDIT);
    }

    private BaseResponse debitCardPayment(Card card, CardTransactionRequest request){
        Optional<BankAccount> optionalBankAccount = bankAccountRepository.findByCardId(card.getId());
        if(optionalBankAccount.isEmpty())
            return createResponse(MessageConstants.FAILED, MessageConstants.BANK_ACCOUNT_DOES_NOT_EXIST);

        BankAccount bankAccount = optionalBankAccount.get();
        BigDecimal balance = bankAccount.getBalance();

        if(balance.compareTo(request.getTransactionAmount()) >=0){
            bankAccount.setBalance(balance.subtract(request.getTransactionAmount()));
            bankAccountRepository.save(bankAccount);
            saveCardTransaction(card, request);
            return createResponse(MessageConstants.SUCCESS, MessageConstants.TRANSACTION_APPROVED);
        } else
            return createResponse(MessageConstants.FAILED, MessageConstants.INSUFFICIENT_FUNDS);
    }

    private void saveCardTransaction(Card card, CardTransactionRequest request){
        cardTransactionRepository.save(CardTransaction.builder()
                .companyName(request.getCompanyName())
                .companyCategory(request.getCompanyCategory())
                .transactionAmount(request.getTransactionAmount())
                .card(card)
                .transactionDate(Objects.isNull(request.getTransactionDate()) ? LocalDateTime.now() : request.getTransactionDate())
                .build());
    }

    private boolean validateCardInfo(Card card){
        if(!card.getIsActive())
            return false;
        else return card.getExpirationDate().isAfter(LocalDate.now());
    }

    private boolean validateTransactionRequest(Card card, CardTransactionRequest request) {
        return card.getCreditLimit() != null &&
                card.getCreditUsed() != null &&
                request.getTransactionAmount() != null;
    }

    private BaseResponse createResponse(String status, String message){
        return BaseResponse.builder()
                .status(status)
                .message(message)
                .build();
    }

    private BigDecimal rewardMoneyAmount(int rewardAmount){
        return new BigDecimal(rewardAmount)
                .multiply(new BigDecimal(CardConstants.REWARD_VALUE)).setScale(2, RoundingMode.HALF_UP);
    }
}
