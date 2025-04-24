package com.project.banking.repository;

import com.project.banking.model.Person;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {

    @Query("SELECT p FROM Person p WHERE p.firstName = :firstName AND p.lastName = :lastName")
    List<Person> findPersonsByFirstAndLastName(@Param("firstName") String firstName, @Param("lastName") String lastName);

    @Query("SELECT p FROM Person p WHERE p.firstName = :firstName AND p.lastName = :lastName")
    Page<Person> findPersonsByFirstAndLastNamePage(@Param("firstName") String firstName, @Param("lastName") String lastName);

    Optional<Person> findByDpi(String dpi);
}
