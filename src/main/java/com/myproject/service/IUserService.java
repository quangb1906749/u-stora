package com.myproject.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.myproject.dto.UserDTO;
import com.myproject.entity.CategoryEntity;

@Service
public interface IUserService {
	List<UserDTO> findAll(Pageable pageable);
	int getTotalItem();
	UserDTO findById(long id);
	UserDTO save(UserDTO dto);
	void delete(long[] ids);
	public List<CategoryEntity> GetDataCategorys();
}
