package com.project.banking.dto.response;

import com.fasterxml.jackson.databind.ser.Serializers;
import com.project.banking.model.Person;
import jakarta.persistence.Column;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDateTime;

@SuperBuilder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserAccountResponse extends BaseResponse {

    private Long id;
    private String userName;
    private String password;
    private Person person;
    private LocalDateTime createdDate;
    private Boolean isActive;


}
