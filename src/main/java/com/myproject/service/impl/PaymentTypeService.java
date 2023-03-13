package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.PaymentTypeConverter;
import com.myproject.dto.PaymentTypeDTO;
import com.myproject.entity.PaymentTypeEntity;
import com.myproject.repository.PaymentTypeRepository;
import com.myproject.service.IPaymentTypeService;

@Service
public class PaymentTypeService implements IPaymentTypeService {
	
	@Autowired
	private PaymentTypeRepository paymentTypeRepository;
	
	@Autowired
	private PaymentTypeConverter paymentTypeConverter;
	
	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<PaymentTypeEntity> entities = paymentTypeRepository.findAll();
		for (PaymentTypeEntity item: entities) {
			result.put(item.getPaymentCode(), item.getPaymentName());
		}
		return result;
	}
	
	@Override
	public List<PaymentTypeDTO> findAll(Pageable pageable) {
		List<PaymentTypeDTO> models = new ArrayList<>();
		List<PaymentTypeEntity> entities = paymentTypeRepository.findAll(pageable).getContent();
		for (PaymentTypeEntity item: entities) {
			PaymentTypeDTO paymentTypeDTO = paymentTypeConverter.toDto(item);
			models.add(paymentTypeDTO);
		}
		return models;
	}
	
	@Override
	public int getTotalItem() {
		return (int) paymentTypeRepository.count();
	}
	
	@Override
	public PaymentTypeDTO findById(long id) {
		PaymentTypeEntity entity = paymentTypeRepository.findOne(id);
		return paymentTypeConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public PaymentTypeDTO save(PaymentTypeDTO dto) {
		PaymentTypeEntity paymentTypeEntity = new PaymentTypeEntity();
		if (dto.getId() != null) {
			PaymentTypeEntity oldPaymentType = paymentTypeRepository.findOne(dto.getId());
			paymentTypeEntity = paymentTypeConverter.toEntity(oldPaymentType, dto);
		} else {
			paymentTypeEntity = paymentTypeConverter.toEntity(dto);
		}
		return paymentTypeConverter.toDto(paymentTypeRepository.save(paymentTypeEntity));
	}
	
	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			paymentTypeRepository.delete(id);
		}
	}
}
