package com.myproject.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class OrderDTO extends AbstractDTO<OrderDTO>{
	private String fullName;
	private String email;
	private Long userId;
	private String shipPhone;
	private String shipAddress;
	private String shipState;
	private int orderTotalQuantity;
	private BigDecimal orderTotalPrice;
	private List<OrderDetailDTO> listOrderDetail = new ArrayList<>();
	
	
		
	public OrderDTO() {
		super();
	}
	public OrderDTO(String fullName, String email, Long userId, String shipPhone, String shipAddress, String shipState,
			int orderTotalQuantity, BigDecimal orderTotalPrice) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.userId = userId;
		this.shipPhone = shipPhone;
		this.shipAddress = shipAddress;
		this.shipState = shipState;
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
	public String getShipState() {
		return shipState;
	}
	public void setShipState(String shipState) {
		this.shipState = shipState;
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
	public List<OrderDetailDTO> getListOrderDetail() {
		return listOrderDetail;
	}
	public void setListOrderDetail(List<OrderDetailDTO> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}
	
	
	
	
}
