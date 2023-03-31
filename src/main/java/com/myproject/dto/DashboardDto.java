package com.myproject.dto;

public class DashboardDto {
	
	private int totalUser;
	private int totalProduct;
	private int totalOrder;
	
	public DashboardDto() {
		super();
	}
	
	public DashboardDto(int totalUser, int totalProduct, int totalOrder) {
		super();
		this.totalUser = totalUser;
		this.totalProduct = totalProduct;
		this.totalOrder = totalOrder;
	}
	
	public int getTotalUser() {
		return totalUser;
	}
	public void setTotalUser(int totalUser) {
		this.totalUser = totalUser;
	}
	public int getTotalProduct() {
		return totalProduct;
	}
	public void setTotalProduct(int totalProduct) {
		this.totalProduct = totalProduct;
	}
	public int getTotalOrder() {
		return totalOrder;
	}
	public void setTotalOrder(int totalOrder) {
		this.totalOrder = totalOrder;
	}
}
