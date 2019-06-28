package com.loveLight.controller;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.service.RegisterService;
import com.loveLight.service.impl.RegisterServiceImpl;

@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value = "/registercontroller", method = RequestMethod.GET)
	String registerPage() {
		return "register";
	}
	
	@RequestMapping(value = "/registercontroller", method = RequestMethod.POST)
	String register(Account account) {
		registerService.insertAccount(account);
		return "redirect:login.jsp";
	}
	
}
