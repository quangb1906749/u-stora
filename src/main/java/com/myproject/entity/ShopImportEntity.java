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
@Table(name = "import")
public class ShopImportEntity extends BaseEntity{
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "supplier_id")
    private SupplierEntity supplier;
	
	@OneToMany(mappedBy = "importProduct")
	private List<ImportDetailEntity> importDetails = new ArrayList<>();
	
	@Column
	private Date importDate;

	public SupplierEntity getSupplier() {
		return supplier;
	}

	public void setSupplier(SupplierEntity supplier) {
		this.supplier = supplier;
	}

	public List<ImportDetailEntity> getImportDetails() {
		return importDetails;
	}

	public void setImportDetails(List<ImportDetailEntity> importDetails) {
		this.importDetails = importDetails;
	}

	public Date getImportDate() {
		return importDate;
	}

	public void setImportDate(Date importDate) {
		this.importDate = importDate;
	}
	
	
}
