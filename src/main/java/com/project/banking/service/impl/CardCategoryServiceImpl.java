package com.project.banking.service.impl;

import com.project.banking.model.CardCategory;
import com.project.banking.repository.CardCategoryRepository;
import com.project.banking.request.CardCategoryRequest;
import com.project.banking.service.CardCategoryService;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class CardCategoryServiceImpl implements CardCategoryService {

    private final CardCategoryRepository repository;

    public CardCategoryServiceImpl(CardCategoryRepository repository){
        this.repository = repository;
    }

    @Override
    public CardCategory createCardCategory(CardCategoryRequest cardCategoryRequest) {
        try{
            CardCategory cardCategory = new CardCategory();
            cardCategory.setCardCategoryName(cardCategoryRequest.getCardCategoryName());
            repository.save(cardCategory);
            return cardCategory;
        }catch (Exception ex){
            throw ex;
        }
    }

    @Override
    public Optional<CardCategory> getCardCategoryById(Long id) {
        return repository.findById(id);
    }

    @Override
    public List<CardCategory> getCardCategories() {
        return !repository.findAll().isEmpty() ? repository.findAll() : Collections.emptyList();
    }
}
