package com.loveLight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.service.LoginService;
import com.loveLight.service.VipService;

@Controller
public class VipController {
	
	@Autowired
	private VipService vipService;
	
	@RequestMapping(value = "/recharge", method = RequestMethod.POST)
	public String post(HttpSession session ) {
		
		String username =  (String)session.getAttribute("username");
		Account account = vipService.recharge(username);
		return "homePage";
		
		
	}
}
