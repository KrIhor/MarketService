package lnulp.project.marketservice.auth;

import javax.security.auth.message.AuthException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lnulp.project.marketservice.document.User;
import lnulp.project.marketservice.service.UserService;

@RestController
@CrossOrigin
public class UserAuthController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserConverter userConverter;

	@PostMapping("registration")
	public ResponseEntity<Void> createUser(@RequestBody UserRegistrationDTO userAuthDTO) throws AuthException {

		userService.createUser(userAuthDTO);
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}

	@PostMapping("login")
	public ResponseEntity<UserDataDTO> getUser(@RequestBody UserLoginDTO userLoginDTO) throws AuthException {

		User user = userService.getUser(userLoginDTO);
		if (user == null) {
			return new ResponseEntity<UserDataDTO>(HttpStatus.NOT_FOUND);
		}
		UserDataDTO userDataDTO = userConverter.toUserDataDTO(user);

		return new ResponseEntity<UserDataDTO>(userDataDTO, HttpStatus.OK);
	}

}
