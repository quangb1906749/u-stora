package com.myproject.converter;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

import com.myproject.dto.OrderDTO;
import com.myproject.entity.OrderEntity;

@Component
public class OrderConverter {
	
	public OrderDTO toDto(OrderEntity entity) {
		OrderDTO result = new OrderDTO();
		result.setId(entity.getId());
		result.setUserId(entity.getUser().getId());
		result.setFullName(entity.getUser().getFullName());
		result.setShipPhone(entity.getShipPhone());
		result.setEmail(entity.getUser().getEmail());
		result.setShipAddress(entity.getShipAddress());
		result.setShipState(entity.getShipState());
		result.setOrderTotalQuantity(entity.getOrderTotalQuantity());
		result.setOrderTotalPrice(entity.getOrderTotalPrice());
		result.setCreatedDate(entity.getCreatedDate());
		result.setPaymentTypeCode(entity.getPaymentType().getPaymentCode());
		result.setPaymentTypeName(entity.getPaymentType().getPaymentName());
		result.setPaymentDescription(entity.getPaymentType().getPaymentDescription());
		return result;
	}
	
	public OrderEntity toEntity(OrderDTO dto) {
		OrderEntity result = new OrderEntity();
		result.setShipPhone(dto.getShipPhone());
		result.setShipAddress(dto.getShipAddress());
		result.setShipState(dto.getShipState());
		result.setOrderTotalQuantity(dto.getOrderTotalQuantity());
		result.setOrderTotalPrice(dto.getOrderTotalPrice());
		return result;
	}
	
	public OrderEntity toEntity(OrderEntity result, OrderDTO dto) {
		result.setShipPhone(dto.getShipPhone());
		result.setShipAddress(dto.getShipAddress());
		result.setShipState(dto.getShipState());
		result.setOrderTotalQuantity(dto.getOrderTotalQuantity());
		result.setOrderTotalPrice(dto.getOrderTotalPrice());
		return result;
	}
	
}
