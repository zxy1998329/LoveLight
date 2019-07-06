package com.loveLight.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.FriendsList;
import com.loveLight.mapper.FriendsListMapper;
import com.loveLight.service.FriendsListService;

@Service
public class FriendsListServiceImpl implements FriendsListService {

	@Autowired
	private FriendsListMapper friendsListMapper;

	@Override
	public int AddFriend(FriendsList friendsList,String username) {
		int i = 0;
		System.out.println(username);
		if(friendsList.getF1()==null) {
			i=1;
			System.out.println(i);
			friendsList.setF1(username);
			friendsListMapper.insetFriends(friendsList);
		}
		else if(friendsList.getF2()==null) {
			i=2;
			System.out.println(i);
			friendsList.setF2(username);
			friendsListMapper.insetFriends(friendsList);
		}
		else if(friendsList.getF3()==null) {
			i=3;
			System.out.println(i);
			friendsList.setF3(username);
			friendsListMapper.insetFriends(friendsList);
		}
		else if(friendsList.getF4()==null) {
			i=4;
			friendsList.setF4(username);
			friendsListMapper.insetFriends(friendsList);
		}
		else if(friendsList.getF5()==null) {
			i=5;
			friendsList.setF5(username);
			friendsListMapper.insetFriends(friendsList);
		}
		else {
			return -1;
		}
		return i;
		
		
		
	}

	@Override
	public int FindInvite(FriendsList friendsList) {
		int i=0;
		if(friendsList.getfInvi1()!=null) {
			i++;
		}
		if(friendsList.getfInvi2()!=null) {
			i++;
		}
		if(friendsList.getfInvi3()!=null) {
			i++;
		}
		
		
		return i;
	}

	@Override
	public int AddInvite(FriendsList friendsList, String inviteName) {
		
		 String username = friendsList.getUsername(); 
		 FriendsList friendsList1 = friendsListMapper.findByUsername(inviteName);		 
		
		 System.out.println(friendsList1);
		 
		if(friendsList1.getfInvi1()==null) {
			friendsList1.setfInvi1(username);
			friendsListMapper.insetInvite(friendsList1);
			return 1;
			
		}
		else if(friendsList1.getfInvi2()==null) {
			friendsList1.setfInvi2(username);
			friendsListMapper.insetInvite(friendsList1);
			return 2;
		}
		else if(friendsList1.getfInvi3()==null) {
			friendsList1.setfInvi3(username);
			friendsListMapper.insetInvite(friendsList1);
			return 3;
		}
		else return 0;
		
		
	}
	
	

}
