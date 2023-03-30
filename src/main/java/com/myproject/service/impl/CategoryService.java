package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.CategoryConverter;
import com.myproject.dto.CategoryDTO;
import com.myproject.dto.ProductDTO;
import com.myproject.entity.CategoryEntity;
import com.myproject.entity.ProductEntity;
import com.myproject.repository.CategoryRepository;
import com.myproject.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private CategoryConverter categoryConverter;
	
	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for (CategoryEntity item: entities) {
			result.put(item.getCategoryCode(), item.getCategoryName());
		}
		return result;
	}
	
	@Override
	public List<CategoryDTO> findAll(Pageable pageable) {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAll(pageable).getContent();
		for (CategoryEntity item: entities) {
			CategoryDTO categoryDTO = categoryConverter.toDto(item);
			models.add(categoryDTO);
		}
		return models;
	}
	
	@Override
	public int getTotalItem() {
		return (int) categoryRepository.count();
	}
	
	@Override
	public CategoryDTO findById(long id) {
		CategoryEntity entity = categoryRepository.findOne(id);
		return categoryConverter.toDto(entity);
	}
	
	@Override
	public CategoryDTO fineByCategoryCode(String categoryCode) {
		CategoryEntity entity = categoryRepository.findOneByCategoryCode(categoryCode);
		return categoryConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public CategoryDTO save(CategoryDTO dto) {
		CategoryEntity categoryEntity = new CategoryEntity();
		if (dto.getId() != null) {
			CategoryEntity oldCategory = categoryRepository.findOne(dto.getId());
			categoryEntity = categoryConverter.toEntity(oldCategory, dto);
		} else {
			categoryEntity = categoryConverter.toEntity(dto);
		}
		return categoryConverter.toDto(categoryRepository.save(categoryEntity));
	}
	
	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			categoryRepository.delete(id);
		}
	}
}
