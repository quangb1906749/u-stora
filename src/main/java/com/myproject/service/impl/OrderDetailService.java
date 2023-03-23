package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.OrderDetailConverter;
import com.myproject.dto.CartDto;
import com.myproject.dto.OrderDetailDTO;
import com.myproject.entity.OrderDetailEntity;
import com.myproject.entity.OrderEntity;
import com.myproject.entity.ProductEntity;
import com.myproject.repository.OrderDetailRepository;
import com.myproject.repository.OrderRepository;
import com.myproject.repository.ProductRepository;
import com.myproject.service.IOrderDetailService;

@Service
public class OrderDetailService implements IOrderDetailService {
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private OrderDetailConverter orderDetailConverter;
	
	@Override
	public List<OrderDetailDTO> findAll(Pageable pageable) {
		List<OrderDetailDTO> models = new ArrayList<>();
		List<OrderDetailEntity> entities = orderDetailRepository.findAll(pageable).getContent();
		for (OrderDetailEntity item: entities) {
			OrderDetailDTO orderDTO = orderDetailConverter.toDto(item);
			models.add(orderDTO);
		}
		return models;
	}
	
	@Override
	public List<OrderDetailDTO> findAll() {
		List<OrderDetailDTO> models = new ArrayList<>();
		List<OrderDetailEntity> entities = orderDetailRepository.findAll();
		for (OrderDetailEntity item: entities) {
			OrderDetailDTO orderDTO = orderDetailConverter.toDto(item);
			models.add(orderDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) orderRepository.count();
	}

	@Override
	public OrderDetailDTO findById(long id) {
		OrderDetailEntity entity = orderDetailRepository.findOne(id);
		return orderDetailConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public OrderDetailDTO save(OrderDetailDTO dto) {
		ProductEntity product = productRepository.findOne(dto.getProductId());
		OrderEntity order = orderRepository.findOne(dto.getOrderId());
		OrderDetailEntity orderDetailEntity = new OrderDetailEntity();
		if (dto.getId() != null) {
			OrderDetailEntity oldOrderDetail = orderDetailRepository.findOne(dto.getId());
			oldOrderDetail.setProduct(product);
			oldOrderDetail.setOrder(order);
			orderDetailEntity = orderDetailConverter.toEntity(oldOrderDetail, dto);
		} else {
			orderDetailEntity = orderDetailConverter.toEntity(dto);
			orderDetailEntity.setProduct(product);
			orderDetailEntity.setOrder(order);
		}
		return orderDetailConverter.toDto(orderDetailRepository.save(orderDetailEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			orderDetailRepository.delete(id);
		}
	}
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts, Long idOrder) {
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			OrderDetailDTO orderDetail = new OrderDetailDTO();
			orderDetail.setOrderId(idOrder);
			orderDetail.setProductId(itemCart.getValue().getProduct().getId());
			orderDetail.setQuantity(itemCart.getValue().getQuanty());
			orderDetail.setTotalPrice(itemCart.getValue().getTotalPrice());
			save(orderDetail);
		}
		
	}

	
}
