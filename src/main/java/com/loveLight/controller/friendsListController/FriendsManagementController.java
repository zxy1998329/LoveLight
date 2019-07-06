package com.loveLight.controller.friendsListController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveLight.entity.Account;
import com.loveLight.entity.FriendsList;
import com.loveLight.mapper.FriendsListMapper;
import com.loveLight.service.FriendsListService;

@Controller
public class FriendsManagementController {
	@Autowired
	private FriendsListService friendsListService;
	@Autowired
	private FriendsListMapper friendsListMapper;
	
	@RequestMapping(value = "/friendsadd", method = RequestMethod.POST)
	public String post(String username,HttpSession session ) {
		
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		
		int i = friendsListService.AddFriend(friendsList, username);
		int j = friendsListService.AddInvite(friendsList, username);
		if(i>0 &&j>0) {
			System.out.println("添加成功");
			System.out.println(i);
			return "homePage";
		}
		else {
			if(i<0) {
				System.out.println("好友列表已满");
			}
			if(j<0) {
				System.out.println("对方已不能接受好友申请");
			}
			
			
			return "homePage";
		}
		
	}
	@RequestMapping(value = "/friendsinvite", method = RequestMethod.POST)
	public String invite(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		int i = friendsListService.FindInvite(friendsList);
		session.setAttribute("inviteNumber", i);
		switch(i) {
		case 0: System.out.println("无好友邀请");
				break;
		case 1:session.setAttribute("invite1",friendsList.getfInvi1());
				break;
		case 2:session.setAttribute("invite2",friendsList.getfInvi2());
				break;
		case 3:session.setAttribute("invite3",friendsList.getfInvi3());
				break;
		}
		return "friendInvite";
	}
	
	@RequestMapping(value = "/allow1")
	public String allow1(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
	
		int i = friendsListService.AddFriend(friendsList,friendsList.getfInvi1());
		friendsList.setfInvi1(null);
		friendsListMapper.insetInvite(friendsList);
		if(i>0) {
			System.out.println("添加成功");
			System.out.println(i);
			return "homePage";
		}
		else {
			System.out.println("添加失败，好友列表已满");
			return "homePage";
		}
		
		
	}
	
	@RequestMapping(value = "/refuse1")
	public String refuse1(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		friendsList.setfInvi1(null);
		friendsListMapper.insetInvite(friendsList);
		return "homePage";
	}
	
	@RequestMapping(value = "/allow2")
	public String allow2(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		
		int i = friendsListService.AddFriend(friendsList,friendsList.getfInvi2());
		friendsList.setfInvi2(null);
		friendsListMapper.insetInvite(friendsList);
		if(i>0) {
			System.out.println("添加成功");
			System.out.println(i);
			return "homePage";
		}
		else {
			System.out.println("添加失败，好友列表已满");
			return "homePage";
		}
		
		
	}
	
	@RequestMapping(value = "/refuse2")
	public String refuse2(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		friendsList.setfInvi2(null);
		friendsListMapper.insetInvite(friendsList);
		return "homePage";
	}
	
	@RequestMapping(value = "/allow3")
	public String allow3(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
	
		int i = friendsListService.AddFriend(friendsList,friendsList.getfInvi3());
		friendsList.setfInvi3(null);
		friendsListMapper.insetInvite(friendsList);
		if(i>0) {
			System.out.println("添加成功");
			System.out.println(i);
			return "homePage";
		}
		else {
			System.out.println("添加失败，好友列表已满");
			
			return "homePage";
		}
		
		
	}
	
	@RequestMapping(value = "/refuse3")
	public String refuse3(HttpSession session ) {
		FriendsList friendsList = friendsListMapper.findByUsername((String)session.getAttribute("username"));
		friendsList.setfInvi3(null);
		friendsListMapper.insetInvite(friendsList);
		return "homePage";
	}
}
