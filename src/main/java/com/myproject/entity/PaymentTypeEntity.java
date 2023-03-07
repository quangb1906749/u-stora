package com.myproject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "payment_type")
public class PaymentTypeEntity extends BaseEntity{
	@OneToMany(mappedBy = "paymentType")
	private List<OrderEntity> order = new ArrayList<>();
	
	@Column
	private String paymentCode;
	
	@Column
	private String paymentNameString;
	
	@Column
	private String image;

	public List<OrderEntity> getOrder() {
		return order;
	}

	public void setOrder(List<OrderEntity> order) {
		this.order = order;
	}

	public String getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}

	public String getPaymentNameString() {
		return paymentNameString;
	}

	public void setPaymentNameString(String paymentNameString) {
		this.paymentNameString = paymentNameString;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
