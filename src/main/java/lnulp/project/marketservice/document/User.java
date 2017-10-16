package lnulp.project.marketservice.document;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Document
public class User {

	@Id
	private String id;

	@DBRef(lazy = true)
	@JsonIgnore
	private Account account;

	@DBRef(lazy = true)
	@JsonIgnore
	private Person person;
	

	private List<Shop> shops;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public List<Shop> getShops() {
		return shops;
	}

	public void setShops(List<Shop> shops) {
		this.shops = shops;
	}
}
