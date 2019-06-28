package com.loveLight.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private AccountMapper accountmapper;

	@Override
	public int insertAccount(Account account) {
		// TODO Auto-generated method stub
		int row = accountmapper.insertAll(account);
		return row;
	}
	
	
	
}
