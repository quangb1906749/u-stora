package com.myproject.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.dto.ProductDTO;
import com.myproject.service.IProductService;

@RestController(value = "ProductAPIOfAdmin")
public class ProductAPI {
	
	@Autowired
	private IProductService ProductService;
	
	@PostMapping("/api/product")
	public ProductDTO createProduct(@RequestBody ProductDTO ProductDTO) {
		return ProductService.save(ProductDTO);
	}
	
	@PutMapping("/api/product")
	public ProductDTO updateProduct(@RequestBody ProductDTO updateProduct) {
		return ProductService.save(updateProduct);
	}
	
	@DeleteMapping("/api/product")
	public void deleteProduct(@RequestBody long[] ids) {
		ProductService.delete(ids);
	}
}
