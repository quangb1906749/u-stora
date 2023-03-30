package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.CategoryEntity;
import com.myproject.entity.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Long> {
	
}
