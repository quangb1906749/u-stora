package com.myproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "image")
public class ImageEntity extends BaseEntity{
	
	@Column(name = "imagecode")
	private String imageCode;
	
	@Column(name = "imagename")
	private String imageName;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "image_id")
    private ProductEntity product;

	public String getImageCode() {
		return imageCode;
	}

	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}
}
