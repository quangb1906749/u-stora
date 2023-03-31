package com.myproject.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.myproject.dto.DashboardDto;
import com.myproject.service.IDashboardService;

@Service
public class DashboardService implements IDashboardService {
//	@Autowired
//	private ProductRepository productRepository;
//	
//	@Autowired
//	private ProductConverter productConverter;
	
//	@Override
//	public HashMap<Long, DashboardDto> AddDashboard(long id, HashMap<Long, DashboardDto> dashboard) {
//		DashboardDto itemDashboard = new DashboardDto();
//		ProductEntity entity = productRepository.findOne(id);
//		ProductDTO product = productConverter.toDto(entity);
//		if(product != null && dashboard.containsKey(id)) {
//			itemDashboard = dashboard.get(id);
//			itemDashboard.setQuanty(itemDashboard.getQuanty() + 1);
//			itemDashboard.setTotalPrice(BigDecimal.valueOf(itemDashboard.getQuanty()).multiply(itemDashboard.getProduct().getPrice()));
//		}else {
//			itemDashboard.setProduct(product);
//			itemDashboard.setQuanty(1);
//			itemDashboard.setTotalPrice(product.getPrice());
//		}
//		dashboard.put(id,itemDashboard);
//		return dashboard;
//	}

	@Override
	public HashMap<Long, DashboardDto> Dashboard(long id, HashMap<Long, DashboardDto> dashboard) {
		if(dashboard==null) {
			return dashboard;
		}
		
		if(dashboard.containsKey(id)) {
			dashboard.remove(id);
		}
		return dashboard;
	}
	@Override
	public int TotalUser(HashMap<Long, DashboardDto> dashboard) {
		int totalUser = 0;
		for(Map.Entry<Long, DashboardDto> itemDashboard : dashboard.entrySet()) {
			totalUser += itemDashboard.getValue().getTotalUser() ;
		}
		return totalUser;
	}
	
	@Override
	public int TotalProduct(HashMap<Long, DashboardDto> dashboard) {
		int totalProduct = 0;
		for(Map.Entry<Long, DashboardDto> itemDashboard : dashboard.entrySet()) {
			totalProduct += itemDashboard.getValue().getTotalProduct();
		}
		return totalProduct;
	}
	
	@Override
	public int TotalOrder(HashMap<Long, DashboardDto> dashboard) {
		int totalOrder = 0;
		for(Map.Entry<Long, DashboardDto> itemDashboard : dashboard.entrySet()) {
			totalOrder += itemDashboard.getValue().getTotalOrder();
		}
		return totalOrder;
	}
}
