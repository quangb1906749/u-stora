package com.myproject.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class OrderEntity extends BaseEntity{
	
	@OneToMany(mappedBy = "order")
	private List<OrderDetailEntity> orderDetails = new ArrayList<>();
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserEntity user;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "payment_type_id")
    private PaymentTypeEntity paymentType;
	
	@Column
	private Date orderDate;
	
	@Column
	private Date shippedDate;
	
	@Column
	private String shipAddress;
	
	@Column
	private String shipState;

	public List<OrderDetailEntity> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public PaymentTypeEntity getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(PaymentTypeEntity paymentType) {
		this.paymentType = paymentType;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getShippedDate() {
		return shippedDate;
	}

	public void setShippedDate(Date shippedDate) {
		this.shippedDate = shippedDate;
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
	
	
}
