package com.project.banking.service.impl;

import com.project.banking.dto.response.BaseResponse;
import com.project.banking.exception.ValidateRequestException;
import com.project.banking.model.Person;
import com.project.banking.repository.PersonRepository;
import com.project.banking.repository.UserAccountRepository;
import com.project.banking.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

import static com.project.banking.utils.MessageConstants.OPERATION_PERFORMED_SUCCESSFULLY;
import static com.project.banking.utils.MessageConstants.SUCCESS;

@Service
@RequiredArgsConstructor
public class PersonServiceImpl implements PersonService {

    private final PersonRepository personRepository;

    @Override
    public BaseResponse createPerson(Person request) {
        personRepository.save(request);
        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public List<Person> getAllPersons() {
        return personRepository.findAll();
    }

    @Override
    public Person getPersonById(Long id) {
        return personRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
    }

    @Override
    public Person getPersonByDpi(String dpi) {
        return personRepository.findByDpi(dpi).orElseThrow(() -> new ValidateRequestException("Entity not found"));
    }

    @Override
    public List<Person> getPersonsByName(String firstName, String lastName) {
        return personRepository.findPersonsByFirstAndLastName(firstName, lastName);
    }

    @Override
    public Page<Person> getPersonsPage(Pageable pageable) {
        return personRepository.findAll(pageable);
    }

    @Override
    public BaseResponse updatePerson(Long id, Person request) {
        Person person = personRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
        person.setAddress(Objects.isNull(request.getAddress()) ? person.getAddress() : request.getAddress());
        person.setEmailAddress(Objects.isNull(request.getEmailAddress()) ? person.getEmailAddress() : request.getEmailAddress());
        person.setFirstName(Objects.isNull(request.getFirstName()) ? person.getFirstName() : request.getFirstName());
        person.setSecondName(Objects.isNull(request.getSecondName()) ? person.getSecondName() : request.getSecondName());
        person.setLastName(Objects.isNull(request.getLastName()) ? person.getLastName() : request.getLastName());
        person.setSecondLastName(Objects.isNull(request.getSecondLastName()) ? person.getSecondLastName() : request.getSecondLastName());
        person.setPhoneNumber(Objects.isNull(request.getPhoneNumber()) ? person.getPhoneNumber() : request.getPhoneNumber());
        personRepository.save(person);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }

    @Override
    public BaseResponse deletePerson(Long id) {
        Person person = personRepository.findById(id).orElseThrow(() -> new ValidateRequestException("Entity not found"));
        personRepository.delete(person);

        return BaseResponse.builder()
                .status(SUCCESS)
                .message(OPERATION_PERFORMED_SUCCESSFULLY)
                .build();
    }
}
