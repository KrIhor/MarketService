package lnulp.project.marketservice.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import lnulp.project.marketservice.document.Product;

public interface ProductRepository extends MongoRepository<Product, String> {

}
