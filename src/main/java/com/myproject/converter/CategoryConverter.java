package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.CategoryDTO;
import com.myproject.entity.CategoryEntity;

@Component
public class CategoryConverter {
	
	public CategoryDTO toDto(CategoryEntity entity) {
		CategoryDTO result = new CategoryDTO();
		result.setId(entity.getId());
		result.setCode(entity.getCategoryCode());
		result.setName(entity.getCategoryName());
		return result;
	}
	
	public CategoryEntity toEntity(CategoryDTO dto) {
		CategoryEntity result = new CategoryEntity();
		result.setCategoryCode(dto.getCode());
		result.setCategoryName(dto.getName());
		return result;
	}
}
