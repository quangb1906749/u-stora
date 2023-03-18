package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.SlidesDTO;
import com.myproject.entity.SlidesEntity;
@Component
public class SlidesConverter {
	public SlidesDTO toDto(SlidesEntity entity) {
		SlidesDTO result = new SlidesDTO();
		result.setImg(entity.getImg());
		result.setCaption(entity.getCaption());
		result.setContent(entity.getContent());
		return result;
	}
	// tao entity moi
	public SlidesEntity toEntity(SlidesDTO dto) {
		SlidesEntity result = new SlidesEntity();
		result.setImg(dto.getImg());
		result.setCaption(dto.getCaption());
		result.setContent(dto.getContent());
		return result;
	}
	// reuse entity co san -> luu them
	public SlidesEntity toEntity(SlidesEntity result, SlidesDTO dto) {
		result.setImg(dto.getImg());
		result.setCaption(dto.getCaption());
		result.setContent(dto.getContent());
		return result;
	}
}
