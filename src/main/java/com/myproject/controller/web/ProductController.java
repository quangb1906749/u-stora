package com.myproject.controller.web;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//import com.myproject.service.IProductService;

@Controller(value = "ProductControllerOfWeb")
public class ProductController  {
	
//	@Autowired 
//	private IProductService _productService;
	

	@RequestMapping(value = {"/single-product/{id}"}, method = RequestMethod.GET)
	public ModelAndView singleproductPage() {
		ModelAndView mav = new ModelAndView("web/single-product");
//		mav.addObject("product", _productService.findById(id));
		return mav;
	} 
	
//	@RequestMapping(value = "/single-product", method = RequestMethod.GET)
//	public ModelAndView Index(HttpServletRequest request, HttpServletResponse response, @PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("web/single-product");
//		return mav;
//	}
//	
}
