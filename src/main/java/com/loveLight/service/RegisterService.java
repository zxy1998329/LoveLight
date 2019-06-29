package com.loveLight.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;


public interface RegisterService {
	
	int insertAccount(Account account);
	
}
