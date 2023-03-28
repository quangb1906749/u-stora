package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.OrderDTO;
import com.myproject.dto.OrderDetailDTO;
import com.myproject.entity.OrderDetailEntity;
import com.myproject.entity.OrderEntity;

@Component
public class OrderDetailConverter {
	
	public OrderDetailDTO toDto(OrderDetailEntity entity) {
		OrderDetailDTO result = new OrderDetailDTO();
		result.setId(entity.getId());
		result.setProductId(entity.getProduct().getId());
		result.setProductName(entity.getProduct().getName());
		result.setProductPrice(entity.getProduct().getPrice());
		result.setOrderId(entity.getOrder().getId());
		result.setQuantity(entity.getQuantity());
		result.setTotalPrice(entity.getTotalPrice());
		return result;
	}
	
	public OrderDetailEntity toEntity(OrderDetailDTO dto) {
		OrderDetailEntity result = new OrderDetailEntity();
		result.setQuantity(dto.getQuantity());
		result.setTotalPrice(dto.getTotalPrice());
		return result;
	}
	
	public OrderDetailEntity toEntity(OrderDetailEntity result, OrderDetailDTO dto) {
		result.setQuantity(dto.getQuantity());
		result.setTotalPrice(dto.getTotalPrice());
		return result;
	}
	
}
