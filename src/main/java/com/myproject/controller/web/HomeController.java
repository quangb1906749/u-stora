package com.myproject.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.dto.ProductDTO;
import com.myproject.dto.SlidesDTO;
import com.myproject.service.IProductService;
import com.myproject.service.ISlidesService;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	private IProductService productService;
	
	@Autowired
	private ISlidesService slideService;

	
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		
		ProductDTO model = new ProductDTO();
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		
		SlidesDTO slide = new SlidesDTO(); 
		slide.setListResult(slideService.findAll());
		mav.addObject("slides", slide);
		
		return mav;
	}
	
	@RequestMapping(value = "/single-product", method = RequestMethod.GET)
	public ModelAndView singleproductPage() {
		ModelAndView mav = new ModelAndView("web/product/single-product");
		return mav;
	}
	
	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView aboutusPage() {
		ModelAndView mav = new ModelAndView("web/about/about-us");
		return mav;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}
	
}