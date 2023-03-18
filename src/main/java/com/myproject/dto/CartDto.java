package com.myproject.dto;

import java.math.BigDecimal;

public class CartDto {
	private int quanty;
	private BigDecimal totalPrice;
	private ProductDTO product;
	public CartDto() {
		super();
	}
	public CartDto(int quanty, BigDecimal totalPrice, ProductDTO product) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
	
	
}
