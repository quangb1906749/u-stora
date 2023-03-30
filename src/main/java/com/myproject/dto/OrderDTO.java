package com.myproject.dto;

import java.math.BigDecimal;

public class OrderDTO extends AbstractDTO<CategoryDTO>{
	private String fullName;
	private String email;
	private Long userId;
	private String shipPhone;
	private String shipAddress;
	private int orderTotalQuantity;
	private BigDecimal orderTotalPrice;
	
		
	public OrderDTO() {
		super();
	}
	public OrderDTO(Long userId, String shipPhone, String shipAddress, int orderTotalQuantity,
			BigDecimal orderTotalPrice) {
		super();
		this.userId = userId;
		this.shipPhone = shipPhone;
		this.shipAddress = shipAddress;
		this.orderTotalQuantity = orderTotalQuantity;
		this.orderTotalPrice = orderTotalPrice;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getShipPhone() {
		return shipPhone;
	}
	public void setShipPhone(String shipPhone) {
		this.shipPhone = shipPhone;
	}
	public String getShipAddress() {
		return shipAddress;
	}
	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}
	public int getOrderTotalQuantity() {
		return orderTotalQuantity;
	}
	public void setOrderTotalQuantity(int orderTotalQuantity) {
		this.orderTotalQuantity = orderTotalQuantity;
	}
	public BigDecimal getOrderTotalPrice() {
		return orderTotalPrice;
	}
	public void setOrderTotalPrice(BigDecimal orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}