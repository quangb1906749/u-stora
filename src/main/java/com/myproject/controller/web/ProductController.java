package com.myproject.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.dto.ProductDTO;
import com.myproject.service.IProductService;

//import com.myproject.service.IProductService;

@Controller(value = "ProductControllerOfWeb")
public class ProductController  {
	
	@Autowired 
	private IProductService _productService;
	

	@RequestMapping(value = {"/chi-tiet-san-pham/{id}"}, method = RequestMethod.GET)
	public ModelAndView singleproductPage(@PathVariable long id) {
		ModelAndView mav = new ModelAndView("web/product/single-product");
		mav.addObject("product", _productService.findById(id));
		return mav;
	} 
	
	@RequestMapping(value = "SingleProduct/{id}")
	public String SingleProduct(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, ProductDTO> SProduct = (HashMap<Long,  ProductDTO>)session.getAttribute("SingleProduct");
		
//		cart = cartService.AddCart(id, cart);
//		session.setAttribute("Cart", cart);
//		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
//		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = {"/cua-hang"}, method = RequestMethod.GET)
	public ModelAndView storePage(@RequestParam("page") int page, 
			 @RequestParam("limit") int limit, HttpServletRequest request) {
		ProductDTO model = new ProductDTO();
		model.setPage(page);
		model.setLimit(limit);

		ModelAndView mav = new ModelAndView("web/product/store");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(_productService.findAll(pageable));
		model.setTotalItem(_productService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;
	} 
	
	
}
