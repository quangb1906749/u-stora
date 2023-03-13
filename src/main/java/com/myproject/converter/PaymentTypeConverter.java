package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.PaymentTypeDTO;
import com.myproject.entity.PaymentTypeEntity;

@Component
public class PaymentTypeConverter {
	
	public PaymentTypeDTO toDto(PaymentTypeEntity entity) {
		PaymentTypeDTO result = new PaymentTypeDTO();
		result.setId(entity.getId());
		result.setPaymentCode(entity.getPaymentCode());
		result.setPaymentName(entity.getPaymentName());
		result.setPaymentImage(entity.getPaymentImage());
		return result;
	}
	
	public PaymentTypeEntity toEntity(PaymentTypeDTO dto) {
		PaymentTypeEntity result = new PaymentTypeEntity();
		result.setPaymentCode(dto.getPaymentCode());
		result.setPaymentName(dto.getPaymentName());
		result.setPaymentImage(dto.getPaymentImage());
		return result;
	}
	
	public PaymentTypeEntity toEntity(PaymentTypeEntity result, PaymentTypeDTO dto) {
		result.setPaymentCode(dto.getPaymentCode());
		result.setPaymentName(dto.getPaymentName());
		result.setPaymentImage(dto.getPaymentImage());
		return result;
	}
	
}
