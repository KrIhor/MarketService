package lnulp.project.marketservice.auth;

import java.util.List;

import lnulp.project.marketservice.document.Category;

public class ShopInfoDTO {

	private String name;
	private List<Category> categories;
	private String img;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
