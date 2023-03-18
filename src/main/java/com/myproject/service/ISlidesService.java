package com.myproject.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.SlidesDTO;

public interface ISlidesService {
	List<SlidesDTO> findAll(Pageable pageable);
	List<SlidesDTO> findAll();
	int getTotalItem();
	SlidesDTO findById(long id);
	SlidesDTO save(SlidesDTO dto);
	void delete(long[] ids);
}
