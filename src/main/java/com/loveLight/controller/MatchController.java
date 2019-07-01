package com.loveLight.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.MatchService;

@Controller
@RequestMapping("/match")
public class MatchController {
	@Autowired
	private MatchService matchService;
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public String sysMatch(HttpSession session,Model model) {//系统匹配返回多个账户，需要当前的用户信息
		
		List<Account> result = matchService.sysMatch((String) session.getAttribute("username"));//调用服务层的匹配函数
		model.addAttribute("result", result);
		return "match/1"; //返回到匹配显示结果页面  
		
	}
	
	@RequestMapping(value="/byAccount",method=RequestMethod.GET)
	public String toAccountPage() {
		return "match/2";
	}
	
	@RequestMapping(value="/finByAccount",method=RequestMethod.POST)
	public String find(@RequestParam("username") String username, Model model) {
		Account account = matchService.findAccountByUsername(username);
		List<Account> result = new ArrayList<Account>();
		result.add(account);
		model.addAttribute("result", result);
		return "match/1";
	}
	
	@RequestMapping(value="/finByCon",method=RequestMethod.POST)
	public String findCon(String high,String salary,String area,Model model) {
		
		List<Account> result = matchService.dynamicSearch(high, salary, area);
		model.addAttribute("result", result);
		return "match/1";	
	}
}
