package com.loveLight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.service.LoginService;


@Controller
public class LoginController {
	@Autowired
	private LoginService loginService1;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String get() {
		return "login.jsp";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String post(Account account,HttpSession session ) {
		
		String row1 ;
		row1 = loginService1.login(account);
		
		if(row1!=null) {
			session.setAttribute("username", row1);
<<<<<<< HEAD
			return "homePage";  //测试匹配功能 做的修改
=======
			session.setAttribute("reset", 1);
			return "homePage";
>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git
		}
		else {
			return "redirect:login.jsp";
		}
		
		
			
		
	}
}
