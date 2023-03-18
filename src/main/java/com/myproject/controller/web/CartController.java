package com.myproject.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.service.IProductService;

@Controller(value = "cartControllerOfWeb")
@RequestMapping(value ="/cart")
public class CartController {
	@Autowired
	private IProductService productService;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "cart.index";
	}
}
