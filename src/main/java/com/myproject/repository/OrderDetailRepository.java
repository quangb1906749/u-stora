package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.OrderDetailEntity;
import com.myproject.entity.OrderEntity;
import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Long> {
	List<OrderDetailEntity> findByOrder(OrderEntity order);
}
