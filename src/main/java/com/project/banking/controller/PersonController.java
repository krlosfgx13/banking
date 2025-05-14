package com.project.banking.controller;

import com.project.banking.dto.response.BaseResponse;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.Person;
import com.project.banking.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Collections;
import java.util.List;

import static com.project.banking.utils.MessageConstants.*;

@RestController
@RequestMapping("api/banking")
@RequiredArgsConstructor
public class PersonController {

    private final PersonService personService;
    private static final Logger logger = LoggerFactory.getLogger(PersonController.class);

    @PostMapping("person/create")
    public ResponseEntity<BaseResponse> createPerson(@RequestBody Person request){
        try {
            return new ResponseEntity<>(personService.createPerson(request),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/person/{id}")
    public ResponseEntity<Person> getUserAccountById(@PathVariable("id") Long id) {
        try {
            return new ResponseEntity<>(personService.getPersonById(id),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new Person(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new Person(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/persons")
    public ResponseEntity<List<Person>> getAllPeople() {
        try {
            return new ResponseEntity<>(personService.getAllPersons(),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/persons/page")
    public ResponseEntity<Page<Person>> getAllPeoplePage(
            @RequestParam(name = "pageNo") int pageNo,
            @RequestParam(name = "pageSize") int pageSize){
        try {
            return new ResponseEntity<>(
                    personService.getPersonsPage(PageRequest.of(pageNo-1, pageSize,
                    Sort.by("id").ascending())),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(new PageImpl<>(List.of(),
                    PageRequest.of(0, 10), 0),
                    HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(new PageImpl<>(List.of(),
                    PageRequest.of(0, 10), 0),
                    HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("person/name")
    public ResponseEntity<List<Person>> getPeopleByName(
            @RequestParam(name = "firstName") String firstName,
            @RequestParam(name = "lastName") String lastName){
        try {
            return new ResponseEntity<>(personService.getPersonsByName(firstName, lastName),
                    HttpStatus.OK);
        } catch (ValidateRequestException vre) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex) {
            return new ResponseEntity<>(Collections.emptyList(), HttpStatus.FORBIDDEN);
        }
    }

    @PutMapping("/person/{id}")
    public ResponseEntity<BaseResponse> updatePerson(Long id, @RequestBody Person request){
        try{
            return ResponseEntity.ok(personService.updatePerson(id, request));
        } catch (ValidateRequestException vre) {
            logger.error("PersonController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("PersonController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

    @DeleteMapping("/person/{id}")
    public ResponseEntity<BaseResponse> deletePerson(Long id){
        try{
            return ResponseEntity.ok(personService.deletePerson(id));
        } catch (ValidateRequestException vre) {
            logger.error("PersonController - error: {}", vre.getMessage());
            logger.error("Exception Details: ", vre);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(INVALID_REQUEST_DATA)
                    .build(), HttpStatus.BAD_REQUEST);
        } catch (Exception ex){
            logger.error("PersonController - error: {}", ex.getMessage());
            logger.error("Exception details: ", ex);
            return new ResponseEntity<>(BaseResponse
                    .builder()
                    .status(FAILED)
                    .message(UNEXPECTED_ERROR)
                    .build(), HttpStatus.FORBIDDEN);
        }
    }

}
