package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.SlidesConverter;
import com.myproject.dto.SlidesDTO;
import com.myproject.entity.SlidesEntity;
import com.myproject.repository.SlidesRepository;
import com.myproject.service.ISlidesService;

@Service
public class SlidesService implements ISlidesService {
	@Autowired
	private SlidesRepository slidesRepository;
	
	@Autowired
	private SlidesConverter slidesConverter;
	
	@Override
	public List<SlidesDTO> findAll(Pageable pageable) {
		List<SlidesDTO> models = new ArrayList<>();
		List<SlidesEntity> entities = slidesRepository.findAll(pageable).getContent();
		for (SlidesEntity item: entities) {
			SlidesDTO slidesDTO = slidesConverter.toDto(item);
			models.add(slidesDTO);
		}
		return models;
	}
	
	@Override
	public List<SlidesDTO> findAll() {
		List<SlidesDTO> models = new ArrayList<>();
		List<SlidesEntity> entities = slidesRepository.findAll();
		for (SlidesEntity item: entities) {
			SlidesDTO slidesDTO = slidesConverter.toDto(item);
			models.add(slidesDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) slidesRepository.count();
	}

	@Override
	public SlidesDTO findById(long id) {
		SlidesEntity entity = slidesRepository.findOne(id);
		return slidesConverter.toDto(entity);
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			slidesRepository.delete(id);
		}
	}

	@Override
	public SlidesDTO save(SlidesDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}
}
