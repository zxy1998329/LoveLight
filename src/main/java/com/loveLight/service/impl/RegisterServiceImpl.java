package com.loveLight.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public int insertAccount(Account account) {		//插入账号信息
		// TODO Auto-generated method stub
		int row = accountMapper.insertAll(account);
		return row;
	}

	
	@Override										//更新账号信息
	public int updateAccount(Account account) {
		// TODO Auto-generated method stub
		int row = accountMapper.updateAccount(account);
		return row;
	}
	
	
	
}
