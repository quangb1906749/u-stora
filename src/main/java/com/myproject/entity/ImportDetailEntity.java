package com.myproject.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "import_detail")
public class ImportDetailEntity extends BaseEntity{

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "import_id")
    private ShopImportEntity importProduct;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    private ProductEntity product;
	
	@Column
	private Float quantity;
	
	@Column
	private BigDecimal unitPrice;


	public ShopImportEntity getImportProduct() {
		return importProduct;
	}

	public void setImportProduct(ShopImportEntity importProduct) {
		this.importProduct = importProduct;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}

	public Float getQuantity() {
		return quantity;
	}

	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
}
