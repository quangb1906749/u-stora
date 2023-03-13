package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.PaymentTypeEntity;

public interface PaymentTypeRepository extends JpaRepository<PaymentTypeEntity, Long> {
	PaymentTypeEntity findOneByPaymentCode(String paymentCode);
}
