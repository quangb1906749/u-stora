package com.myproject.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.converter.UserConverter;
import com.myproject.dto.UserDTO;
import com.myproject.dto.UserDTO;
import com.myproject.entity.CategoryEntity;
import com.myproject.entity.RoleEntity;
import com.myproject.entity.UserEntity;
import com.myproject.entity.UserEntity;
import com.myproject.repository.CategoryRepository;
import com.myproject.repository.RoleRepository;
import com.myproject.repository.UserRepository;
import com.myproject.repository.UserRepository;
import com.myproject.service.IUserService;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private UserRepository userRepository;
	
//	@Autowired
//	private RoleRepository roleRepository;
	
	@Autowired
	private UserConverter userConverter;
	
	@Override
	public List<UserDTO> findAll(Pageable pageable) {
		List<UserDTO> models = new ArrayList<>();
		List<UserEntity> entities = userRepository.findAll(pageable).getContent();
		for (UserEntity item: entities) {
			UserDTO userDTO = userConverter.toDto(item);
			models.add(userDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) userRepository.count();
	}

	@Override
	public UserDTO findById(long id) {
		UserEntity entity = userRepository.findOne(id);
		return userConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public UserDTO save(UserDTO dto) {
//		RoleEntity role = roleRepository.findOneByCode(dto.getRoleCode());
		UserEntity userEntity = new UserEntity();
		dto.setPassword(BCrypt.hashpw(dto.getPassword(), BCrypt.gensalt(10)));
		if (dto.getId() != null) {
			UserEntity oldUser = userRepository.findOne(dto.getId());
//			oldUser.setRoles(role);
			userEntity = userConverter.toEntity(oldUser, dto);
		} else {
			userEntity = userConverter.toEntity(dto);
//			userEntity.setCategory(category);
		}
		return userConverter.toDto(userRepository.save(userEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			userRepository.delete(id);
		}
	}

	public List<CategoryEntity> GetDataCategorys() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
