package com.loveLight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.LoginService;
import com.loveLight.service.VipService;

@Controller
public class VipController {
	
	@Autowired
	private VipService vipService;
	private AccountMapper accountMapper;
	
	@RequestMapping(value = "/vipcenter")
	public String vipCenter() {
		return "VIP";
	}
	
	@RequestMapping(value = "/backVip", method = RequestMethod.GET)
	public String get() {
		return "VIP";
	}
	
	@RequestMapping(value = "/recharge", method = RequestMethod.POST)
	public String post(HttpSession session ) {
		
		String username =  (String)session.getAttribute("username");
		System.out.println(username);
		
		Account account1 = vipService.getAccount(username);
		System.out.println(account1);
		if(account1.getRole()==1) { //判断用户权限 0 未实名 1非会员 2会员
			session.setAttribute("role", 1);
			
			vipService.recharge(username);
			return "rechargeSuccess";
		}
		else if(account1.getRole()==0){
			session.setAttribute("role", 0);
			session.setAttribute("reset", 0);
			return "VIP";
		}
		else if(account1.getRole()==2) {
			session.setAttribute("role", 2);
			session.setAttribute("reset", 0);
			return "VIP";
		}
		
		return "homePage";
		
		
	}
	
	@RequestMapping(value = "/vipsuccess", method = RequestMethod.GET)
	public String vipsuccess() {
		return "vipsuccess";
	}
}
