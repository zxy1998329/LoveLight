package com.loveLight.controller.friendsListController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

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

	@RequestMapping(value = "/friendslist1")
	public String friendslist(HttpSession session) {
		FriendsList friendsList = friendsListService.findFriends((String) session.getAttribute("username"));

		session.setAttribute("f1", friendsList.getF1());
		session.setAttribute("f2", friendsList.getF2());
		session.setAttribute("f3", friendsList.getF3());
		session.setAttribute("f4", friendsList.getF4());
		session.setAttribute("f5", friendsList.getF5());
		session.setAttribute("infoController", -1);// -1 默认值 0申请失败 1申请成功 2添加失败(上限) 3添加成功4添加失败（拒绝）
		return "friendsList/friendslist";
	}

	@RequestMapping(value = "/friendslist2")
	public String friendslist2(HttpSession session) {

		return "friendsList/friendslist";
	}

	@RequestMapping(value = "/friendsadd", method = RequestMethod.POST)
	public String post(String username, HttpSession session) {

		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));

		int i = friendsListService.AddFriend(friendsList, username);
		int j = friendsListService.AddInvite(friendsList, username);
		if (i > 0 && j > 0) {
			session.setAttribute("infoController", 1);
			System.out.println("添加成功");
			System.out.println(i);
			return "friendsList/friendslist";
		} else {
			if (i < 0) {
				session.setAttribute("infoController", 0);
			}
			if (j < 0) {
				session.setAttribute("infoController", 0);
			}

			return "friendsList/friendslist";
		}

	}

	@RequestMapping(value = "/friendsadd", method = RequestMethod.GET)
	public String addfriend(WebRequest request,HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));

		String username = (String)request.getParameter("addname");
		System.out.println("username is "+username);
		int i = friendsListService.AddFriend(friendsList, username);
		int j = friendsListService.AddInvite(friendsList, username);
		if (i > 0 && j > 0) {
			session.setAttribute("infoController", 1);
			System.out.println("添加成功");
			System.out.println(i);
			return "friendsList/friendslist";
		} else {
			if (i < 0) {
				session.setAttribute("infoController", 0);
			}
			if (j < 0) {
				session.setAttribute("infoController", 0);
			}

			return "friendsList/friendslist";
		}

	}

	@RequestMapping(value = "/friendsinvite", method = RequestMethod.POST)
	public String invite(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));
		int i = friendsListService.FindInvite(friendsList);
		session.setAttribute("inviteNumber", i);
		switch (i) {
		case 0:
			System.out.println("无好友邀请");
			break;
		case 1:
			session.setAttribute("invite1", friendsList.getfInvi1());
			System.out.println(friendsList.getfInvi1());
			break;
		case 2:
			session.setAttribute("invite2", friendsList.getfInvi2());
			break;
		case 3:
			session.setAttribute("invite3", friendsList.getfInvi3());
			break;
		}
		return "friendsList/friendslist";
	}

	@RequestMapping(value = "/allow1")
	public String allow1(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));

		int i = friendsListService.AddFriend(friendsList, friendsList.getfInvi1());
		friendsList.setfInvi1(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite1", null);
		if (i > 0) {
			session.setAttribute("infoController", 3);
			System.out.println("添加成功");
			System.out.println(i);
			return "friendsList/friendslist";
		} else {
			System.out.println("添加失败，好友列表已满");
			session.setAttribute("infoController", 2);
			return "friendsList/friendslist";
		}

	}

	@RequestMapping(value = "/refuse1")
	public String refuse1(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));
		friendsList.setfInvi1(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite1", null);
		session.setAttribute("infoController", 4);
		return "friendsList/friendslist";
	}

	@RequestMapping(value = "/allow2")
	public String allow2(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));

		int i = friendsListService.AddFriend(friendsList, friendsList.getfInvi2());
		friendsList.setfInvi2(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite2", null);
		if (i > 0) {
			System.out.println("添加成功");
			System.out.println(i);
			session.setAttribute("infoController", 3);
			return "friendsList/friendslist";

		} else {
			System.out.println("添加失败，好友列表已满");
			session.setAttribute("infoController", 2);
			return "friendsList/friendslist";
		}

	}

	@RequestMapping(value = "/refuse2")
	public String refuse2(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));
		friendsList.setfInvi2(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite2", null);
		session.setAttribute("infoController", 4);
		return "friendsList/friendslist";
	}

	@RequestMapping(value = "/allow3")
	public String allow3(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));

		int i = friendsListService.AddFriend(friendsList, friendsList.getfInvi3());
		friendsList.setfInvi3(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite3", null);
		if (i > 0) {
			System.out.println("添加成功");
			System.out.println(i);
			session.setAttribute("infoController", 3);

			return "friendsList/friendslist";
		} else {
			System.out.println("添加失败，好友列表已满");
			session.setAttribute("infoController", 2);

			return "friendsList/friendslist";
		}

	}

	@RequestMapping(value = "/refuse3")
	public String refuse3(HttpSession session) {
		FriendsList friendsList = friendsListMapper.findByUsername((String) session.getAttribute("username"));
		friendsList.setfInvi3(null);
		friendsListMapper.insetInvite(friendsList);
		session.setAttribute("invite3", null);
		session.setAttribute("infoController", 4);
		return "friendsList/friendslist";
	}
}

