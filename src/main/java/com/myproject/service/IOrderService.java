package com.myproject.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.OrderDTO;

public interface IOrderService {
	List<OrderDTO> findAll(Pageable pageable);
	List<OrderDTO> findAll();
	int getTotalItem();
	OrderDTO findById(long id);
	OrderDTO save(OrderDTO dto);
	void delete(long[] ids);
}
