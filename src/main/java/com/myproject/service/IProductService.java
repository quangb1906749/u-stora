package com.myproject.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.ProductDTO;

public interface IProductService {
	List<ProductDTO> findAll(Pageable pageable);
	List<ProductDTO> findAll();
	int getTotalItem();
	ProductDTO findById(long id);
	ProductDTO save(ProductDTO dto);
	void delete(long[] ids);
}
