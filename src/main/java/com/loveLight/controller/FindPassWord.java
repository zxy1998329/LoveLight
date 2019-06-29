package com.loveLight.controller;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveLight.service.PassWordService;

@Controller
@RequestMapping(value = "/findPassWord") // url首先判断是否匹配findPassWord，然后再用之后的路径匹配方法的映射value
public class FindPassWord {

	@Autowired
	private PassWordService passWordService;
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String findPage() {
		return "findPassWord";
	}

	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String emailPage() {
		return "email";
	}

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	public String sendEmail(@RequestParam("email") String email, HttpSession session) {
		
		String num = passWordService.sendEmail(email);
		session.setAttribute("randomNum", num);
		
		return "emailMatch";
	}

	

}
