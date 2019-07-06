package com.loveLight.mapper;

import com.loveLight.entity.FriendsList;

public interface FriendsListMapper {
	
	String [] findFriendsList(FriendsList friendslist); //查找好友列表
	
	void insetFriends(FriendsList friendslist);//加入好友
	
	FriendsList findByUsername(String username);
	
	void insetInvite(FriendsList friendslist); //发送好友申请
}
