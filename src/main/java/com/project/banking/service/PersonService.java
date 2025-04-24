package com.project.banking.service;

import com.project.banking.dto.response.BaseResponse;
import com.project.banking.model.Person;
import com.project.banking.model.UserAccount;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface PersonService {
    BaseResponse createPerson(Person request);
    List<Person> getAllPersons();
    Person getPersonById(Long id);
    Person getPersonByDpi(String dpi);
    List<Person> getPersonsByName(String firstName, String lastName);
    Page<Person> getPersonsPage(Pageable pageable);
    BaseResponse updatePerson(Long id, Person request);
    BaseResponse deletePerson(Long id);
}
