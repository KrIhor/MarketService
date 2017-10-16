package lnulp.project.marketservice.document;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Shop {

	@Id
	private String id;

	private String name;

	@DBRef(lazy = true)
	private List<Category> categories;

	private String img;

	@DBRef(lazy = true)
	private User owner;

	@DBRef(lazy = true)
	private List<Product> shopProducts;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public List<Product> getShopProducts() {
		return shopProducts;
	}

	public void setShopProducts(List<Product> shopProducts) {
		this.shopProducts = shopProducts;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

}
