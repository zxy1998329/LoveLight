package com.loveLight.controller.personalCenterController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.RegisterService;

@Controller
public class BaseInfoController {
	
	
	private Account account;
	
	@Autowired
	private AccountMapper accountMapper;
	
	@GetMapping (value="/baseInfo" )
	public String goingToChangeBaseData(HttpSession session ) {
		String username = (String) session.getAttribute("username");	//从session中获取当前用户的username
		account = accountMapper.findAccountInfoByUsername(username);	//通过username获取用户的基本资料
		session.setAttribute("accountInfo", account);		//设置session键值对，用户基本信息
		return "personalCenter/baseInfo";
	}
	
	@Autowired
	private RegisterService registerService;
	
	@PostMapping(value="/baseInfo")
	public String updateBaseInfo(Account account, HttpSession session) {
		registerService.updateAccount(account);
		session.setAttribute("accountInfo", account);	//更新session中的accountInfo
		return "personalCenter/baseInfo";
	}
	
}
