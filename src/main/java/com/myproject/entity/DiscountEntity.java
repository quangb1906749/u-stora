package com.myproject.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "discount")
public class DiscountEntity extends BaseEntity{
	
	@Column(name = "discountname")
	private String discountName;
	
	@Column
	private int type;
	
	@Column(name = "discountamount")
	private Float discountAmount;
	
	@Column(name = "start_date")
	private Date startDate;
	
	@Column
	private Date endDate;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "discount_product", joinColumns = @JoinColumn(name = "discountid"), 
								  inverseJoinColumns = @JoinColumn(name = "productid"))
	private List<ProductEntity> products = new ArrayList<>();


	public String getDiscountName() {
		return discountName;
	}

	public void setDiscountName(String discountName) {
		this.discountName = discountName;
	}

	public Float getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(Float discountAmount) {
		this.discountAmount = discountAmount;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}
}
