package lnulp.project.marketservice.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import lnulp.project.marketservice.document.Person;

public interface PersonRepository extends MongoRepository<Person, String>{

}
