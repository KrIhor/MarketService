package lnulp.project.marketservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import lnulp.project.marketservice.repository.UserRepository;

@RestController
public class UserController {
	
	@Autowired
	private UserRepository userRepository;

}
