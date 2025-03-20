package com.project.banking.service;

import com.project.banking.model.CardCategory;
import com.project.banking.request.CardCategoryRequest;

import java.util.List;
import java.util.Optional;

public interface CardCategoryService {

    CardCategory createCardCategory(CardCategoryRequest cardCategoryRequest);
    Optional<CardCategory> getCardCategoryById(Long id);
    List<CardCategory> getCardCategories();
}
