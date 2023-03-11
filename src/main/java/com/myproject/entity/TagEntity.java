package com.myproject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tag")
public class TagEntity extends BaseEntity{
	
	@Column(name = "tagcode")
	private String tagCode;
	
	@Column(name = "tagName")
	private String tagName;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "tag_product", joinColumns = @JoinColumn(name = "tagid"), 
								  inverseJoinColumns = @JoinColumn(name = "productid"))
	private List<ProductEntity> products = new ArrayList<>();

	public String getTagCode() {
		return tagCode;
	}

	public void setTagCode(String tagCode) {
		this.tagCode = tagCode;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}
	
	

}
