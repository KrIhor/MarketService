package lnulp.project.marketservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lnulp.project.marketservice.auth.UserConverter;
import lnulp.project.marketservice.auth.UserDataDTO;
import lnulp.project.marketservice.auth.UserProfileDTO;
import lnulp.project.marketservice.document.User;
import lnulp.project.marketservice.service.UserService;

@RestController
@CrossOrigin
public class UserProfileController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserConverter userConverter;

	@GetMapping("profile")
	public ResponseEntity<UserProfileDTO> getProfile() {
		String email = "user@test.com";
		User user = userService.getUserByEmail(email);
		UserProfileDTO userProfileDTO = new UserProfileDTO();
		UserDataDTO userDataDTO = userConverter.toUserDataDTO(user);
		userProfileDTO.setUserData(userDataDTO);
		return new ResponseEntity<UserProfileDTO>(userProfileDTO, HttpStatus.OK);
	}

}
