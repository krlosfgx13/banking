package com.project.banking.serialization;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class CompanyCategoryDetail {
    private Long companyCategoryId;
    private String companyCategoryName;
    List<Company> listOfCompanies;
}
