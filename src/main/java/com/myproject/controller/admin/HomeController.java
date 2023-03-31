package com.myproject.controller.admin;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.dto.DashboardDto;
import com.myproject.service.IDashboardService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private IDashboardService dashboardService;
	
	
	@RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}
	
	@RequestMapping(value = "dashboard")
	public String Dashboard(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, DashboardDto> dashboard = (HashMap<Long, DashboardDto>)session.getAttribute("dashboard");
		if(dashboard == null) {
			dashboard = new HashMap<Long, DashboardDto>();
		}
		dashboard = dashboardService.Dashboard(id, dashboard);
		session.setAttribute("Dashboard", dashboard);
		session.setAttribute("TotalUserDashboard", dashboardService.TotalUser(dashboard));
		session.setAttribute("TotalProductDashboard", dashboardService.TotalProduct(dashboard));
		session.setAttribute("TotalOrderDashboard", dashboardService.TotalOrder(dashboard));
		return "redirect:"+request.getHeader("Referer");
	}
}
