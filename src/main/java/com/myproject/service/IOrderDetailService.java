package com.myproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.CartDto;
import com.myproject.dto.OrderDetailDTO;

public interface IOrderDetailService {
	List<OrderDetailDTO> findAll(Pageable pageable);
	List<OrderDetailDTO> findAll();
	int getTotalItem();
	OrderDetailDTO findById(long id);
	OrderDetailDTO save(OrderDetailDTO dto);
	void delete(long[] ids);
	public void AddBillsDetail(HashMap<Long, CartDto> carts, Long idOrder);
}
