package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.RoleDTO;
import com.myproject.entity.RoleEntity;

@Component
public class RoleConverter {
	
	public RoleDTO toDto(RoleEntity entity) {
		RoleDTO result = new RoleDTO();
		result.setId(entity.getId());
		result.setCode(entity.getCode());
		result.setName(entity.getName());
		return result;
	}
	
	public RoleEntity toEntity(RoleDTO dto) {
		RoleEntity result = new RoleEntity();
		result.setCode(dto.getCode());
		result.setName(dto.getName());
		return result;
	}
	
	public RoleEntity toEntity(RoleEntity result, RoleDTO dto) {
		result.setCode(dto.getCode());
		result.setName(dto.getName());
		return result;
	}
	
}
