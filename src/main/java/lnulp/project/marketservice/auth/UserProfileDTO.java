package lnulp.project.marketservice.auth;

import java.util.List;

public class UserProfileDTO {

	private UserDataDTO userData;

	private List<ShopInfoDTO> shops;

	public UserDataDTO getUserData() {
		return userData;
	}

	public void setUserData(UserDataDTO userData) {
		this.userData = userData;
	}

	public List<ShopInfoDTO> getShops() {
		return shops;
	}

	public void setShops(List<ShopInfoDTO> shops) {
		this.shops = shops;
	}

}
