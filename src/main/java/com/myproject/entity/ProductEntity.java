package com.myproject.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {

	@Column(name = "name")
	private String name;

	@Column(name = "price")
	private BigDecimal price;

	@Column(name = "shortdescription")
	private String shortDescription;
	
	@Column(name = "description", columnDefinition = "TEXT")
	private String description;
	
	@Column(name = "image", columnDefinition = "TEXT")
	private String image;
	
	@Column(name = "quantity")
	private Long quantity;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private CategoryEntity category;
	
	@OneToMany(mappedBy = "product")
	private List<ImageEntity> images = new ArrayList<>();
	
	@ManyToMany(mappedBy = "products")
    private List<DiscountEntity> discounts = new ArrayList<>();
	
	@OneToMany(mappedBy = "product")
	private List<ImportDetailEntity> importDetail = new ArrayList<>();
	
	@OneToMany(mappedBy = "product")
	private List<OrderDetailEntity> orderDetail = new ArrayList<>();
	
	@OneToMany(mappedBy = "product")
	private List<ReviewEntity> review = new ArrayList<>();
	
	@ManyToMany(mappedBy = "products")
    private List<TagEntity> tags = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public List<ImageEntity> getImages() {
		return images;
	}

	public void setImages(List<ImageEntity> images) {
		this.images = images;
	}

	public List<DiscountEntity> getDiscounts() {
		return discounts;
	}

	public void setDiscounts(List<DiscountEntity> discounts) {
		this.discounts = discounts;
	}

	public List<ImportDetailEntity> getImportDetail() {
		return importDetail;
	}

	public void setImportDetail(List<ImportDetailEntity> importDetail) {
		this.importDetail = importDetail;
	}

	public List<OrderDetailEntity> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(List<OrderDetailEntity> orderDetail) {
		this.orderDetail = orderDetail;
	}

	public List<ReviewEntity> getReview() {
		return review;
	}

	public void setReview(List<ReviewEntity> review) {
		this.review = review;
	}

	public List<TagEntity> getTags() {
		return tags;
	}

	public void setTags(List<TagEntity> tags) {
		this.tags = tags;
	}

	
	
}
