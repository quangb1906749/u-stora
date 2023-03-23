package com.myproject.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.dto.ProductDTO;
import com.myproject.service.ICategoryService;
import com.myproject.service.IProductService;

@Controller
public class ProductController  extends HomeController{
	
	@Autowired 
	private IProductService _productService;
	
	@Autowired
	private ICategoryService categoryServive;

	@RequestMapping(value = {"/single-product/{id}"}, method = RequestMethod.GET)
	public ModelAndView Index(@PathVariable Long id) {
		
		ModelAndView mav = new ModelAndView("web/single-product");
		mav.addObject("product", _productService.findById(id));
//		mav.addObject("productByIDCategory", _product);
		return mav;
	} 
//	
//	@RequestMapping(value = "//{id}") (liên quan tới tiền bạc thì dùng BigDecimal)
//	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
//		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
//		if(cart == null) {
//			cart = new HashMap<Long, CartDto>();
//		}
}
//	}