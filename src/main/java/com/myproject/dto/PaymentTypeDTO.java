package com.myproject.dto;

public class PaymentTypeDTO extends AbstractDTO<PaymentTypeDTO> {
	
	private String paymentCode;
	private String paymentName;
	private String paymentImage;
	private String paymentDescription;
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getPaymentName() {
		return paymentName;
	}
	public void setPaymentName(String paymentName) {
		this.paymentName = paymentName;
	}
	public String getPaymentImage() {
		return paymentImage;
	}
	public void setPaymentImage(String paymentImage) {
		this.paymentImage = paymentImage;
	}
	public String getPaymentDescription() {
		return paymentDescription;
	}
	public void setPaymentDescription(String paymentDescription) {
		this.paymentDescription = paymentDescription;
	}
		
}
