package com.loveLight.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.loveLight.mapper.AccountMapper;
import com.loveLight.entity.Account;
import com.loveLight.service.LoginService;

public class LoginServiceimpl implements LoginService{

	@Autowired
	private AccountMapper accountMapper;
	
	@Override
	public String login(Account account) {
		
		return accountMapper.login(account);
	}
	
}
