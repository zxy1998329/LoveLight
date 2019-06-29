package com.loveLight.mapper;

import com.loveLight.entity.Account;

public interface AccountMapper {
	
	String login(Account account);
	

	int insertAll(Account account);		//注册的时候插入账号的所有信息

}
