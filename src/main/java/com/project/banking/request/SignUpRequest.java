package com.project.banking.request;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
public class SignUpRequest {
    private String userName;
    private String password;
    private Long personId;
    private List<String> roles;

}
