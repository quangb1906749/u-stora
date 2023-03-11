package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	
}
