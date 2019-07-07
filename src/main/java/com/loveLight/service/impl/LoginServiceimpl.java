package com.loveLight.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.mapper.AccountMapper;
import com.loveLight.entity.Account;
import com.loveLight.entity.LiuYan;
import com.loveLight.service.LoginService;

@Service
public class LoginServiceimpl implements LoginService{

	@Autowired
	private AccountMapper accountMapper;
	
	@Override
	public String login(Account account) {
		
		return accountMapper.findAccount(account);
	}

	
	
}
