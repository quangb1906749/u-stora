package com.myproject.controller.web;

import java.math.BigDecimal;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.dto.CartDto;
import com.myproject.dto.OrderDTO;
import com.myproject.service.IOrderDetailService;
import com.myproject.service.IOrderService;

@Controller(value = "OrderControllerOfWeb")
public class OrderController {
	
	@Autowired
	IOrderService orderService;
	
	@Autowired
	IOrderDetailService orderDetailService;
	
	@RequestMapping(value = "/dat-hang", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/order/checkout");
		OrderDTO order = new OrderDTO();		
		mav.addObject("order", order);
		return mav;
	}
	
	@RequestMapping(value="/dat-hang", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("order") OrderDTO order) {
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
		return "redirect:/trang-chu";
	}
	
}