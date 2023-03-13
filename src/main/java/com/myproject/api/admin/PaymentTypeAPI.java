package com.myproject.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.dto.PaymentTypeDTO;
import com.myproject.service.IPaymentTypeService;

@RestController(value = "PaymentTypeAPIOfAdmin")
public class PaymentTypeAPI {
	
	@Autowired
	private IPaymentTypeService paymentTypeService;
	
	@PostMapping("/api/paymentType")
	public PaymentTypeDTO createPaymentType(@RequestBody PaymentTypeDTO paymentTypeDTO) {
		return paymentTypeService.save(paymentTypeDTO);
	}
	
	@PutMapping("/api/paymentType")
	public PaymentTypeDTO updatePaymentType(@RequestBody PaymentTypeDTO updatePaymentType) {
		return paymentTypeService.save(updatePaymentType);
	}
	
	@DeleteMapping("/api/paymentType")
	public void deletePaymentType(@RequestBody long[] ids) {
		paymentTypeService.delete(ids);
	}
}
