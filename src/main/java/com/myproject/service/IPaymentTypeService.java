package com.myproject.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.PaymentTypeDTO;

public interface IPaymentTypeService {
	Map<String, String> findAll();
	List<PaymentTypeDTO> findAll(Pageable pageable);
	int getTotalItem();
	PaymentTypeDTO findById(long id);
	PaymentTypeDTO save(PaymentTypeDTO dto);
	void delete(long[] ids);
}
