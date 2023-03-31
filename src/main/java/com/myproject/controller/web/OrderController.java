package com.myproject.controller.web;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.Util.MessageUtil;
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
	
	@Autowired
	private MessageUtil messageUtil;
	
	@RequestMapping(value = "/dat-hang", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/order/checkout");
		OrderDTO order = new OrderDTO();		
		mav.addObject("model", order);

		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		return mav;
	}
	
	@RequestMapping(value="/dat-hang", method = RequestMethod.POST)
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