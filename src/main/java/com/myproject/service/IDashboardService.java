package com.myproject.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.myproject.dto.DashboardDto;

@Service
public interface IDashboardService {
	public HashMap<Long, DashboardDto> Dashboard(long id, HashMap<Long, DashboardDto> dashboard);
	public int TotalUser( HashMap<Long, DashboardDto> dashboard);
	public int TotalProduct( HashMap<Long, DashboardDto> dashboard);
	public int TotalOrder( HashMap<Long, DashboardDto> dashboard);

}
