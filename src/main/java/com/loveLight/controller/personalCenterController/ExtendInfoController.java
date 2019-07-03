package com.loveLight.controller.personalCenterController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.AccountExtend;
import com.loveLight.mapper.AccountExtendMapper;

@Controller
public class ExtendInfoController {
	
	@Autowired
	AccountExtendMapper accountExtendMapper;
	
	@RequestMapping(value="/extendInfo")		//跳转到前端页面，并建立AccountExtend的attribute
	public String extendInfo(HttpSession session) {
		String username = (String) session.getAttribute("username");
		AccountExtend accountExtend = accountExtendMapper.findAccountExtendByUsername(username);
		session.setAttribute("accountExtendInfo", accountExtend);
		
		return "personalCenter/extendInfo";
	}
	
	@RequestMapping(value="/extendInfo" ,method = RequestMethod.POST )
	public String updateaccountExtendInfo(AccountExtend accountExtend,HttpSession session) {
		String username = (String) session.getAttribute("username");
		accountExtend.setUsername(username);
		accountExtendMapper.updateAccountExtend(accountExtend);//更新
		session.setAttribute("accountExtendInfo", accountExtend);//重新设置attribute
		
		return "personalCenter/extendInfo";
	}
	
}
