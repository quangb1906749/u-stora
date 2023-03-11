package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.ProductDTO;
import com.myproject.entity.ProductEntity;

@Component
public class ProductConverter {

	public ProductDTO toDto(ProductEntity entity) {
		ProductDTO result = new ProductDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setPrice(entity.getPrice());
		result.setDescription(entity.getDescription());
		result.setShortDescription(entity.getShortDescription());
		result.setCategoryCode(entity.getCategory().getCategoryCode());
		return result;
	}
	
	public ProductEntity toEntity(ProductDTO dto) {
		ProductEntity result = new ProductEntity();
		result.setName(dto.getName());
		result.setPrice(dto.getPrice());
		result.setDescription(dto.getDescription());
		result.setShortDescription(dto.getShortDescription());
		return result;
	}
	
	public ProductEntity toEntity(ProductEntity result, ProductDTO dto) {
		result.setName(dto.getName());
		result.setPrice(dto.getPrice());
		result.setDescription(dto.getDescription());
		result.setShortDescription(dto.getShortDescription());
		return result;
	}
}
