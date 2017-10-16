package lnulp.project.marketservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lnulp.project.marketservice.auth.UserLoginDTO;
import lnulp.project.marketservice.auth.UserRegistrationDTO;
import lnulp.project.marketservice.document.Account;
import lnulp.project.marketservice.document.Person;
import lnulp.project.marketservice.document.User;
import lnulp.project.marketservice.repository.AccountRepository;
import lnulp.project.marketservice.repository.PersonRepository;
import lnulp.project.marketservice.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private AccountRepository accountRepository;

	@Autowired
	private PersonRepository personRepository;

	

	public void createUser(UserRegistrationDTO registrationDTO) {
		Account account = new Account();
		account.setEmail(registrationDTO.getEmail());
		account.setPassword(registrationDTO.getPassword());
		
		Person person = new Person();
		person.setFirstName(registrationDTO.getFirstName());
		person.setLastName(registrationDTO.getLastName());
		person.setPhone(registrationDTO.getPhone());
		person.setBirthday(registrationDTO.getBirthday());
		
		User user = new User();
		user.setAccount(account);
		user.setPerson(person);
		saveUser(user);
	}
	
	public User getUser(UserLoginDTO userLoginDTO) {
		Account account = accountRepository.findByEmailAndPassword(userLoginDTO.getEmail(), userLoginDTO.getPassword());
		return getUserByAccount(account);
	
	}
	public User getUserByEmail(String email) {
		Account account = accountRepository.findByEmail(email);
		return getUserByAccount(account);
	}

	private User getUserByAccount(Account account) {
		if(account == null) {
			return null;
		}
		User user = userRepository.findUserByAccount(account);
		return user;
	}
	
	private User saveUser(User user) {
		Account account = user.getAccount();
		Person person = user.getPerson();
		accountRepository.save(account);
		personRepository.save(person);
		userRepository.save(user);
		
		return user;
	}

}
