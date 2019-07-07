package com.loveLight.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import com.loveLight.entity.FriendsList;
import com.loveLight.entity.LiuYan;
import com.loveLight.service.FriendsListService;
import com.loveLight.service.LiuYanService;

@Controller
public class liuyanController {
	@Autowired
	private FriendsListService friendListService;
	@Autowired
	private LiuYanService liuYanService;
	
	@RequestMapping(value="/tofriend",method=RequestMethod.GET)
	String test(HttpSession session) {
		String username = (String) session.getAttribute("username");
		FriendsList friendsList = friendListService.searchFriend(username);
		session.setAttribute("friends", friendsList);
		return "friendsList/friendslist";//跳到好友显示画面，显示好友列表
	}
	
	@RequestMapping(value="/toPersonal",method=RequestMethod.GET)
	String toPersonal(HttpSession session,Model model) {
		String beiliuyanren = (String) session.getAttribute("username");
		List<LiuYan> list = liuYanService.search(beiliuyanren);
		//查找留言数据库，放在model里面，
		model.addAttribute("list",list);
	
		return "personalCenter/recent";
	}
	
	@RequestMapping(value="/toRecent",method=RequestMethod.GET)
	String haoyouRecent(WebRequest request,HttpSession session,Model model) {
		int index = (int) Integer.parseInt(request.getParameter("index"));
		session.setAttribute("liuyanren", session.getAttribute("username"));
		
		String beiliuyanren = null;
		FriendsList friendsList = (FriendsList) session.getAttribute("friends");
		switch(index) {//查找好友的留言数据库
		case 1:{
			beiliuyanren = friendsList.getF1();
			break;
		}
		
		case 2:{
			beiliuyanren = friendsList.getF2();
			break;
		}
		
		case 3:{
			beiliuyanren = friendsList.getF3();
			break;
		}
		
		case 4:{
			beiliuyanren = friendsList.getF4();
			break;
		}
		
		case 5:{
			beiliuyanren = friendsList.getF5();
			break;
		}
		}
		List<LiuYan> list = liuYanService.search(beiliuyanren);
		//查找留言数据库，放在model里面，
		model.addAttribute("list",list);
		session.setAttribute("beiliuyanren", beiliuyanren);
		return "recent1";
	}
	
	@RequestMapping(value="/toliuyan",method=RequestMethod.GET)
	String haoyouRecent() {
	 return "liuyan";
	}
	
	@RequestMapping(value="/liuyan",method=RequestMethod.POST)
	String liuyan(String liuyan,HttpSession session) {
		String username,liuyanren;
		username = (String) session.getAttribute("beiliuyanren");
		liuyanren = (String) session.getAttribute("username");
		int i = liuYanService.insertLiuYan(username, liuyanren,liuyan);
		return "liuyan";
	}
}
