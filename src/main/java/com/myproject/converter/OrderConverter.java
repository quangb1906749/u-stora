package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.OrderDTO;
import com.myproject.entity.OrderEntity;

@Component
public class OrderConverter {
	
	public OrderDTO toDto(OrderEntity entity) {
		OrderDTO result = new OrderDTO();
		result.setId(entity.getId());
		result.setUserId(entity.getUser().getId());
		result.setShipPhone(entity.getShipPhone());
		result.setShipAddress(entity.getShipAddress());
		result.setOrderTotalQuantity(entity.getOrderTotalQuantity());
		result.setOrderTotalPrice(entity.getOrderTotalPrice());
		return result;
	}
	
	public OrderEntity toEntity(OrderDTO dto) {
		OrderEntity result = new OrderEntity();
		result.setShipPhone(dto.getShipPhone());
		result.setShipAddress(dto.getShipAddress());
		result.setOrderTotalQuantity(dto.getOrderTotalQuantity());
		result.setOrderTotalPrice(dto.getOrderTotalPrice());
		return result;
	}
	
	public OrderEntity toEntity(OrderEntity result, OrderDTO dto) {
		result.setShipPhone(dto.getShipPhone());
		result.setShipAddress(dto.getShipAddress());
		result.setOrderTotalQuantity(dto.getOrderTotalQuantity());
		result.setOrderTotalPrice(dto.getOrderTotalPrice());
		return result;
	}
	
}
