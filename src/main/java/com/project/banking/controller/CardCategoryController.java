package com.project.banking.controller;

import com.project.banking.model.CardCategory;
import com.project.banking.dto.request.CardCategoryRequest;
import com.project.banking.service.CardCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/banking")
public class CardCategoryController {

    private final CardCategoryService cardCategoryService;

    @PostMapping("/card/category")
    public ResponseEntity<CardCategory> createCardCategory(@RequestBody CardCategoryRequest request){
        try{
            return new ResponseEntity<>(cardCategoryService.createCardCategory(request), HttpStatus.CREATED);
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @GetMapping("/card/category/{id}")
    public ResponseEntity<CardCategory> getCardCategoryById(@PathVariable("id") Long id){
        Optional<CardCategory> cardCategory = cardCategoryService.getCardCategoryById(id);
        if(cardCategory.isPresent())
            return new ResponseEntity<>(cardCategory.get(), HttpStatus.OK);
        else
            return new ResponseEntity<>(new CardCategory(), HttpStatus.NO_CONTENT);
    }

    @GetMapping("card/categories")
    public ResponseEntity<List<CardCategory>> getCardCategories(){
        return new ResponseEntity<>(cardCategoryService.getCardCategories(), HttpStatus.OK);
    }
}
