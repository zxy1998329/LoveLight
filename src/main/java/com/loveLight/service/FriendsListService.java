package com.loveLight.service;

import com.loveLight.entity.FriendsList;
import com.loveLight.mapper.FriendsListMapper;

public interface FriendsListService {
	
	int AddFriend(FriendsList friendsList,String username);
	int FindInvite(FriendsList friendsList);
	int AddInvite(FriendsList friendsList,String username);
<<<<<<< HEAD
	
	FriendsList searchFriend(String username);
=======
	FriendsList findFriends(String username);
>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git
}
