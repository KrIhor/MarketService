package lnulp.project.marketservice.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import lnulp.project.marketservice.document.Account;
import lnulp.project.marketservice.document.Person;
import lnulp.project.marketservice.document.User;

public interface UserRepository extends MongoRepository<User, String> {
	public User findUserByAccount(Account account);
	public User findUserByPerson(Person person);
}
