package com.myproject.converter;

import org.springframework.stereotype.Component;

import com.myproject.dto.UserDTO;
import com.myproject.entity.UserEntity;

@Component
public class UserConverter {

	public UserDTO toDto(UserEntity entity) {
		UserDTO result = new UserDTO();
		result.setId(entity.getId());
		result.setUserName(entity.getUserName());
		result.setPassword(entity.getPassword());
		result.setFullName(entity.getFullName());
		result.setGender(entity.getGender());
		result.setBirthday(entity.getBirthday());
		result.setPhone(entity.getPhone());
		result.setEmail(entity.getEmail());
		result.setAddress(entity.getAddress());
		result.setStatus(entity.getStatus());
		return result;
	}
	
	public UserEntity toEntity(UserDTO dto) {
		UserEntity result = new UserEntity();
		result.setUserName(dto.getUserName());
		result.setPassword(dto.getPassword());
		result.setFullName(dto.getFullName());
		result.setGender(dto.getGender());
		result.setBirthday(dto.getBirthday());
		result.setPhone(dto.getPhone());
		result.setEmail(dto.getEmail());
		result.setAddress(dto.getAddress());
		result.setStatus(dto.getStatus());
		return result;
	}
	
	public UserEntity toEntity(UserEntity result, UserDTO dto) {
		result.setUserName(dto.getUserName());
		result.setPassword(dto.getPassword());
		result.setFullName(dto.getFullName());
		result.setGender(dto.getGender());
		result.setBirthday(dto.getBirthday());
		result.setPhone(dto.getPhone());
		result.setEmail(dto.getEmail());
		result.setAddress(dto.getAddress());
		result.setStatus(dto.getStatus());
		return result;
	}
}
