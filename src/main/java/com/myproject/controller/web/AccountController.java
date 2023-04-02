package com.myproject.controller.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.Util.MessageUtil;
import com.myproject.dto.UserDTO;
import com.myproject.service.IUserService;

@Controller(value = "accountControllerOfWeb")
public class AccountController {
	
	@Autowired
	IUserService userService;
	@Autowired
	private MessageUtil messageUtil;
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView DangKy() {
		ModelAndView mav = new ModelAndView("web/account/register");
		mav.addObject("user", new UserDTO());
		return mav;
	}
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView TaotaiTK(HttpServletRequest request, HttpServletResponse response, @RequestBody UserDTO user) {
		ModelAndView mav = new ModelAndView("web/account/register");
		UserDTO dto = userService.save(user);
		if (dto != null) {
			mav.addObject("message",messageUtil.getMessage("regist-faill"));
		}else {
			mav.addObject("message",messageUtil.getMessage("regist-success"));
		}
		return mav;
	}
	
}