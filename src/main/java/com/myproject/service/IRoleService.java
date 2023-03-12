package com.myproject.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.myproject.dto.RoleDTO;

public interface IRoleService {
	Map<String, String> findAll();
	List<RoleDTO> findAll(Pageable pageable);
	int getTotalItem();
	RoleDTO findById(long id);
	RoleDTO save(RoleDTO dto);
	void delete(long[] ids);
}
