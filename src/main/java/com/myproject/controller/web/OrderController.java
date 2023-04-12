package com.myproject.controller.web;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.Util.MessageUtil;
import com.myproject.dto.CartDto;
import com.myproject.dto.OrderDTO;
import com.myproject.service.IOrderDetailService;
import com.myproject.service.IOrderService;
import com.myproject.service.IPaymentTypeService;

@Controller(value = "OrderControllerOfWeb")
public class OrderController {
	
	@Autowired
	IOrderService orderService;
	
//	@Autowired
//	IOrderDetailService orderDetailService;
	
	@Autowired
	IPaymentTypeService paymentTypeService;
	
	@Autowired
	private MessageUtil messageUtil;
	
	@RequestMapping(value = "/dat-hang", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/order/checkout");
		OrderDTO order = new OrderDTO();
		if (id != null) {
			order = orderService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", order);
		mav.addObject("paymentType", paymentTypeService.findAllList());
		return mav;
	}
	
	@RequestMapping(value = "/cam-on", method = RequestMethod.GET)
	public ModelAndView thankPage(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/order/thank");
		OrderDTO order = new OrderDTO();
		if (id != null) {
			order = orderService.findById(id);
		}
		mav.addObject("model", order);
		return mav;
	}
	
}