package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.OrderConverter;
import com.myproject.dto.OrderDTO;
import com.myproject.entity.OrderEntity;
import com.myproject.entity.UserEntity;
import com.myproject.repository.OrderRepository;
import com.myproject.repository.UserRepository;
import com.myproject.service.IOrderService;

@Service
public class OrderService implements IOrderService {
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private OrderConverter orderConverter;
	
	@Override
	public List<OrderDTO> findAll(Pageable pageable) {
		List<OrderDTO> models = new ArrayList<>();
		List<OrderEntity> entities = orderRepository.findAll(pageable).getContent();
		for (OrderEntity item: entities) {
			OrderDTO orderDTO = orderConverter.toDto(item);
			models.add(orderDTO);
		}
		return models;
	}
	
	@Override
	public List<OrderDTO> findAll() {
		List<OrderDTO> models = new ArrayList<>();
		List<OrderEntity> entities = orderRepository.findAll();
		for (OrderEntity item: entities) {
			OrderDTO orderDTO = orderConverter.toDto(item);
			models.add(orderDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) orderRepository.count();
	}

	@Override
	public OrderDTO findById(long id) {
		OrderEntity entity = orderRepository.findOne(id);
		return orderConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public OrderDTO save(OrderDTO dto) {
		UserEntity user = userRepository.findOne(dto.getUserId());
		OrderEntity orderEntity = new OrderEntity();
		if (dto.getId() != null) {
			OrderEntity oldOrder = orderRepository.findOne(dto.getId());
			oldOrder.setUser(user);
			orderEntity = orderConverter.toEntity(oldOrder, dto);
		} else {
			orderEntity = orderConverter.toEntity(dto);
			orderEntity.setUser(user);
		}
		return orderConverter.toDto(orderRepository.save(orderEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			orderRepository.delete(id);
		}
	}

	
}