package com.myproject.api.web;

import java.math.BigDecimal;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.dto.CartDto;
import com.myproject.dto.OrderDTO;
import com.myproject.service.IOrderDetailService;
import com.myproject.service.IOrderService;

@RestController(value = "OrderAPIOfWeb")
public class OrderAPI {
	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	IOrderDetailService orderDetailService;
	
	@PostMapping(value="/dat-hang")
	public OrderDTO CheckOutBill(HttpServletRequest request, HttpSession session, @RequestBody OrderDTO order) {
		order.setOrderTotalQuantity(Integer.parseInt(session.getAttribute("TotalQuantyCart").toString()));
		order.setOrderTotalPrice(BigDecimal.valueOf(Double.parseDouble(session.getAttribute("TotalPriceCart").toString())));
		OrderDTO orderDTO = orderService.save(order);
		if(orderDTO.getId() != null) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
			orderDetailService.AddBillsDetail(carts, orderDTO.getId());
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalPriceCart");
		session.removeAttribute("TotalQuantyCart");
		return orderDTO;
	}
}
