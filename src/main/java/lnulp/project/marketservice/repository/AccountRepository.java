package lnulp.project.marketservice.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import lnulp.project.marketservice.document.Account;

public interface AccountRepository extends MongoRepository<Account, String> {
	
	public Account findByEmailAndPassword(String email, String password);
	public Account findByEmail(String email);

}
