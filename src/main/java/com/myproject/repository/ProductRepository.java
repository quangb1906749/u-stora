package com.myproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.CategoryEntity;
import com.myproject.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	List<ProductEntity> findByCategory(CategoryEntity category);
}
