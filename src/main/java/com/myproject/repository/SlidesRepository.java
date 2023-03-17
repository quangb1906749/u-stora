package com.myproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myproject.entity.SlidesEntity;

public interface SlidesRepository extends JpaRepository<SlidesEntity, Long>{
	
}
