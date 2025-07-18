package com.project.banking.controller;

import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.Person;
import com.project.banking.model.Role;
import com.project.banking.model.UserAccount;
import com.project.banking.model.UserRole;
import com.project.banking.repository.PersonRepository;
import com.project.banking.repository.RoleRepository;
import com.project.banking.repository.UserAccountRepository;
import com.project.banking.repository.UserRoleRepository;
import com.project.banking.dto.request.LoginRequest;
import com.project.banking.dto.request.SignUpRequest;
import com.project.banking.security.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.*;

import static com.project.banking.utils.MessageConstants.ENTITY_NOT_FOUND;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final UserAccountRepository userAccountRepository;
    private final UserRoleRepository userRoleRepository;
    private final PasswordEncoder encoder;
    private final PersonRepository personRepository;
    private final RoleRepository roleRepository;
    private final JwtUtil jwtUtil;
    private final UserDetailsService userDetailsService;
    private final Logger logger = LoggerFactory.getLogger(AuthController.class);

    @PostMapping("/login")
    public ResponseEntity<Map<String, String>> login(@RequestBody LoginRequest request) {
        try{
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(request.getUserName(), request.getPassword())
            );

            UserDetails userDetails = userDetailsService.loadUserByUsername(request.getUserName());
            String token = jwtUtil.generateToken(userDetails.getUsername());

            logger.error("User logged in successfully.");
            return ResponseEntity.ok(Collections.singletonMap("token", token));
        } catch (Exception ex){
            Map<String, String> errorMap = new HashMap<>();
            errorMap.put("error", ex.getMessage());
            logger.error("Invalid credentials.");
            return ResponseEntity.ok(errorMap);
        }
    }

    @PutMapping("/changePassword/{id}")
    public String changeUserPassword(@PathVariable Long id, @RequestBody UserAccount request){
        try{
            UserAccount user = userAccountRepository.findById(id).orElseThrow(() -> new ValidateRequestException(ENTITY_NOT_FOUND));

            user.setPassword(encoder.encode(request.getPassword()));
            userAccountRepository.save(user);
            return "Password updated successfully.";

        } catch (ValidateRequestException vre){
            return "Invalid input.";
        }
    }


    @PostMapping("/signup")
    public String registerUser(@RequestBody SignUpRequest request) {
        if (userAccountRepository.existsByUserName(request.getUserName())) {
            return "Error: Username is already taken!";
        }
        Optional<Person> optionalPerson = personRepository.findById(request.getPersonId());

        if(optionalPerson.isEmpty()){
            return "Error: Person does not exist!";
        }

        Person person = optionalPerson.get();

        //if exists, should not have already an account.
        //Add that pending validation here.
        if(userAccountRepository.existsByPersonId(person.getId()))
            return "Error: Person already has an account!";

        // Create new user's account
        UserAccount newUser = UserAccount.builder()
                .userName(request.getUserName())
                .password(encoder.encode(request.getPassword()))
                .person(person)
                .createdDate(LocalDateTime.now())
                .isActive(true)
                .build();

        UserAccount createdUserAccount = userAccountRepository.save(newUser);
        List<Role> roles = roleRepository.findRoles(request.getRoles());

        for(Role role : roles){
            UserRole userRole = new UserRole();
            userRole.setUserAccount(createdUserAccount);
            userRole.setRole(role);
            userRoleRepository.save(userRole);
        }

//        roles.stream()
//                .map(role -> {
//                    UserRole userRole = new UserRole();
//                    userRole.setUserAccount(createdUserAccount);
//                    userRole.setRole(role);
//                    return userRole;
//                })
//                .forEach(userRoleRepository::save);

        return "User registered successfully!";
    }
}


