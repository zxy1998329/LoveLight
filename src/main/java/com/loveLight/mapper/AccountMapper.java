package com.loveLight.mapper;

import java.util.Map;

import javax.activation.MailcapCommandMap;

import com.loveLight.entity.Account;

public interface AccountMapper {
	
	String findAccount(Account account);
	

	int insertAll(Account account);		//注册的时候插入账号的所有信息

	int reset(Map<String, String>parameter);
	
	Account updateByRole(String username);
	
	Account findByUsername(String username);
}
