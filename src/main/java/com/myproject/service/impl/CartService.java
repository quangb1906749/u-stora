package com.myproject.service.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.converter.ProductConverter;
import com.myproject.dto.CartDto;
import com.myproject.dto.ProductDTO;
import com.myproject.entity.ProductEntity;
import com.myproject.repository.ProductRepository;
import com.myproject.service.ICartService;

@Service
public class CartService implements ICartService{
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductConverter productConverter;
	
	@Override
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductEntity entity = productRepository.findOne(id);
		ProductDTO product = productConverter.toDto(entity);
		if(product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(BigDecimal.valueOf(itemCart.getQuanty()).multiply(itemCart.getProduct().getPrice()));
		}else {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		cart.put(id,itemCart);
		return cart;
	}

	@Override
	public HashMap<Long, CartDto> EditCart(long id, int quanty, HashMap<Long, CartDto> cart) {
		if(cart==null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if(cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			BigDecimal totalPrice = BigDecimal.valueOf(quanty).multiply(itemCart.getProduct().getPrice());
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id,itemCart);
		return cart;
	}
	@Override
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		if(cart==null) {
			return cart;
		}
		
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	@Override
	public int TotalQuanty(HashMap<Long, CartDto> cart) {
		int totalQuanty = 0;
		for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}
	@Override
	public BigDecimal TotalPrice(HashMap<Long, CartDto> cart) {
		BigDecimal totalPrice = new BigDecimal(0);
		for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			totalPrice = totalPrice.add(itemCart.getValue().getTotalPrice());
		}
		return totalPrice;
	}	
	
}
