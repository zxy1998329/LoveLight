package com.loveLight.service;

import com.loveLight.entity.Account;

public interface VipService {
	
	Account recharge(String username);
	Account getAccount(String username);
	
}
