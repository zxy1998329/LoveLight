package com.loveLight.controller;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountExtendMapper;
import com.loveLight.service.RegisterService;
import com.loveLight.service.impl.RegisterServiceImpl;

@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	String registerPage() {
		return "register";
	}
	
	@Autowired
	private AccountExtendMapper accountExtendMapper;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	String register(Account account) {
		registerService.insertAccount(account);
		accountExtendMapper.insertAccountExtend(account.getUsername());
		return "redirect:login.jsp";
	}
	
}
