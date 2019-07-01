package com.loveLight.mapper;

import java.util.Map;

import javax.activation.MailcapCommandMap;

import com.loveLight.entity.Account;

public interface AccountMapper {
	
	String findAccount(Account account);
	
	Account findAccountInfoByUsername(String username); //通过username查找整个账号的基本信息
	

	int insertAll(Account account);		//注册的时候插入账号的所有信息

	int reset(Map<String, String>parameter);
	

	int updateAccount(Account account);		//更新账号信息

	Account updateByRole(String username);
	
	Account findByUsername(String username);

}
