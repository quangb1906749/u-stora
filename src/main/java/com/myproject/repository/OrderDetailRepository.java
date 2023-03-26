package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.OrderDetailEntity;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Long> {
	
}
