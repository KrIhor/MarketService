package lnulp.project.marketservice.auth;

import org.springframework.stereotype.Service;

import lnulp.project.marketservice.document.User;

@Service
public class UserConverter {
	public UserDataDTO toUserDataDTO(User user) {
		UserDataDTO userDataDTO = new UserDataDTO();
		userDataDTO.setEmail(user.getAccount().getEmail());
		userDataDTO.setFirstName(user.getPerson().getFirstName());
		userDataDTO.setLastName(user.getPerson().getLastName());
		return userDataDTO;
	}
}
