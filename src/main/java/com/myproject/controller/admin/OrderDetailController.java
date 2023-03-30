package com.myproject.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.Util.MessageUtil;
import com.myproject.dto.OrderDTO;
import com.myproject.service.ICategoryService;
import com.myproject.service.IOrderService;

@Controller(value = "orderDetailControllerOfAdmin")
public class OrderDetailController {
	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private MessageUtil messageUtil;

//	@RequestMapping(value = "/quan-tri/chi-tiet-don-hang", method = RequestMethod.GET)
//	public ModelAndView showList(@RequestParam("page") int page, 
//								 @RequestParam("limit") int limit, HttpServletRequest request) {
//		OrderDTO model = new OrderDTO();
//		model.setPage(page);
//		model.setLimit(limit);
//		ModelAndView mav = new ModelAndView("admin/order/list");
//		Pageable pageable = new PageRequest(page - 1, limit);
//		model.setListResult(orderService.findAll(pageable));
//		model.setTotalItem(orderService.getTotalItem());
//		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
//		if (request.getParameter("message") != null) {
//			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
//			mav.addObject("message", message.get("message"));
//			mav.addObject("alert", message.get("alert"));
//		}
//		mav.addObject("model", model);
//		return mav;
//	}
	
	@RequestMapping(value = "/quan-tri/chi-tiet-don-hang", method = RequestMethod.GET)
	public ModelAndView editOrder(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/order/invoice");
		OrderDTO model = new OrderDTO();
		if (id != null) {
			model = orderService.findById(id);
		}
//		if (request.getParameter("message") != null) {
//			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
//			mav.addObject("message", message.get("message"));
//			mav.addObject("alert", message.get("alert"));
//		}
//		mav.addObject("categories", categoryService.findAll());
		mav.addObject("model", model);
		return mav;
	}
}
