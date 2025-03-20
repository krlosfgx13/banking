package com.project.banking.serialization;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Company {
    private Long id;
    private String name;
    private CompanyCategory category;
}
