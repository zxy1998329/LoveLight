package com.loveLight.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;


public interface RegisterService {
	
	int insertAccount(Account account);		//插入一条账号数据
	
	int updateAccount(Account account);		//更新一条账号数据
	
}
