package com.loveLight.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.VipService;

@Service
public class VipServiceImpl implements VipService{

	@Autowired
	private AccountMapper accountmapper;
	
	@Override
	public Account recharge(String username) {
		return accountmapper.updateByRole(username);
	}

}
