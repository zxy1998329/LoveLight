package com.loveLight.service;

import com.loveLight.entity.FriendsList;
import com.loveLight.mapper.FriendsListMapper;

public interface FriendsListService {
	
	int AddFriend(FriendsList friendsList,String username);
	int FindInvite(FriendsList friendsList);
	int AddInvite(FriendsList friendsList,String username);
	
	FriendsList searchFriend(String username);
}
