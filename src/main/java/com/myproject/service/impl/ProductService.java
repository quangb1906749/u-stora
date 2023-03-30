package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.ProductConverter;
import com.myproject.dto.ProductDTO;
import com.myproject.entity.CategoryEntity;
import com.myproject.entity.ProductEntity;
import com.myproject.repository.CategoryRepository;
import com.myproject.repository.ProductRepository;
import com.myproject.service.IProductService;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private ProductConverter productConverter;
	
	@Override
	public List<ProductDTO> findAll(Pageable pageable) {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findAll(pageable).getContent();
		for (ProductEntity item: entities) {
			ProductDTO productDTO = productConverter.toDto(item);
			models.add(productDTO);
		}
		return models;
	}
	
	@Override
	public List<ProductDTO> findAll() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findAll();
		for (ProductEntity item: entities) {
			ProductDTO productDTO = productConverter.toDto(item);
			models.add(productDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) productRepository.count();
	}

	@Override
	public ProductDTO findById(long id) {
		ProductEntity entity = productRepository.findOne(id);
		return productConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public ProductDTO save(ProductDTO dto) {
		CategoryEntity category = categoryRepository.findOneByCategoryCode(dto.getCategoryCode());
		ProductEntity productEntity = new ProductEntity();
		if (dto.getId() != null) {
			ProductEntity oldProduct = productRepository.findOne(dto.getId());
			oldProduct.setCategory(category);
			productEntity = productConverter.toEntity(oldProduct, dto);
		} else {
			productEntity = productConverter.toEntity(dto);
			productEntity.setCategory(category);
		}
		return productConverter.toDto(productRepository.save(productEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			productRepository.delete(id);
		}
	}

	
}
