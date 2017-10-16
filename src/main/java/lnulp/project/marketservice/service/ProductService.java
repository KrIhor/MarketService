package lnulp.project.marketservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lnulp.project.marketservice.auth.ProductDataDTO;
import lnulp.project.marketservice.document.Product;
import lnulp.project.marketservice.repository.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public void createProduct(ProductDataDTO productDataDTO) {
		
		Product product = new Product();
		
		product.setName(productDataDTO.getName());
		product.setCategory(productDataDTO.getCategory());
		product.setPrice(productDataDTO.getPrice());
		product.setDiscount(productDataDTO.getDiscount());
		
		saveProduct(product);
	}
	
	private Product saveProduct(Product product) {
		productRepository.save(product);
		
		return product;
	}

}
