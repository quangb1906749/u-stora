package com.myproject.service;

import java.math.BigDecimal;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.myproject.dto.CartDto;

@Service
public interface ICartService {
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> AddCart(long id, int quanty, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> EditCart(long id, int quanty, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart);
	public int TotalQuanty( HashMap<Long, CartDto> cart);
	public BigDecimal TotalPrice( HashMap<Long, CartDto> cart);
}
