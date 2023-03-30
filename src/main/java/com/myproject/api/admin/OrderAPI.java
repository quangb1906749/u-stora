package com.myproject.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.dto.OrderDTO;
import com.myproject.service.IOrderService;

@RestController(value = "OrderAPIOfAdmin")
public class OrderAPI {
	
	@Autowired
	private IOrderService orderService;
	
	@PostMapping("/api/order")
	public OrderDTO createOrder(@RequestBody OrderDTO orderDTO) {
		return orderService.save(orderDTO);
	}
	
	@PutMapping("/api/order")
	public OrderDTO updateOrder(@RequestBody OrderDTO updateOrder) {
		return orderService.save(updateOrder);
	}
	
	@DeleteMapping("/api/order")
	public void deleteOrder(@RequestBody long[] ids) {
		orderService.delete(ids);
	}
}
