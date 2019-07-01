package com.loveLight.service;

import java.util.List;

import com.loveLight.entity.Account;

public interface MatchService {

	List<Account> sysMatch(String username);
	
	Account findAccountByUsername(String username);
	
	List<Account> dynamicSearch(String high,String salary,String area);
}
