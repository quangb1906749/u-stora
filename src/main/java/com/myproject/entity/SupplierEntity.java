package com.myproject.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "supplier")
public class SupplierEntity extends BaseEntity{
	
	@OneToMany(mappedBy = "supplier")
	private List<ShopImportEntity> imports = new ArrayList<>();
	
	@Column
	private String supplierName;
	
	@Column
	private String supplierCode;

	public List<ShopImportEntity> getImports() {
		return imports;
	}

	public void setImports(List<ShopImportEntity> imports) {
		this.imports = imports;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierCode() {
		return supplierCode;
	}

	public void setSupplierCode(String supplierCode) {
		this.supplierCode = supplierCode;
	}
	
	
}
