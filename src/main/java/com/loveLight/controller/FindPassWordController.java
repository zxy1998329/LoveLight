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
public class FindPassWordController {

	@Autowired
	private PassWordService passWordService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String findPage() {
		return "findPassWord";
	}

	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String emailPage() {
		return "forgetpassword";
	}

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	public String sendEmail(@RequestParam("email") String email, @RequestParam("account")String account,HttpSession session) {
		
		String num = passWordService.sendEmail(email);
		session.setAttribute("randomNum", num);
		session.setAttribute("account",account);
		session.setAttribute("email", email);
		return "forgetpassword";
	}
	
	@RequestMapping(value = "/match",method = RequestMethod.POST)
	public String match(@RequestParam("inputNum") String inputNum, HttpSession session) {
		
		String randomNum = (String) session.getAttribute("randomNum");
		if(passWordService.emailMatch(inputNum,randomNum)) {
			System.out.println("suucess!");
			session.setAttribute("account", null);
			return "findpassword";
		}
		else {
			System.out.println("fail!");
			return "fail";
		}
	}
	
	@RequestMapping(value = "/reset",method = RequestMethod.POST)
	public String reset(@RequestParam("newPassWord") String newPassWord,HttpSession session) {
		
		if(passWordService.reset(newPassWord,(String)session.getAttribute("account")))
			return "findsuccess";
		else 
			return "fail";
	
	}
}
