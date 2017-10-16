package lnulp.project.marketservice.controller;

import javax.security.auth.message.AuthException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lnulp.project.marketservice.auth.ProductDataDTO;
import lnulp.project.marketservice.service.ProductService;

@RestController
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@PostMapping("product")
	public ResponseEntity<Void> createProduct(@RequestBody ProductDataDTO productDataDTO) throws AuthException {
		productService.createProduct(productDataDTO);
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
}
