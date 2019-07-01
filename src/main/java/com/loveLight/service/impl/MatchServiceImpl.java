package com.loveLight.service.impl;

import java.util.List;

import org.aspectj.apache.bcel.generic.ReturnaddressType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.Account;
import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.MatchService;

@Service
public class MatchServiceImpl implements MatchService {
	@Autowired
	private AccountMapper accountMapper;
	
	@Override
	public List<Account> sysMatch(String username) {
		// TODO Auto-generated method stub
		//根据当前账号的属性对数据库进行第一次筛选
		System.out.println(username);
		Account account = accountMapper.findAccountByUsername(username);
		
		
		List<Account> list = null;
		List<Account> li = null;
		if(account.getArea()!=null)
			list = accountMapper.findByArea(account.getArea(), account.getSex());
		
		if(account.getAccountExtend()!=null)
		{
			if(account.getAccountExtend().getEdu()!=null) {
				li = accountMapper.findByEdu(account.getAccountExtend().getEdu(),account.getSex());
				list.addAll(li);
				li.clear();
			}
			
		}
		
		
		int a = 0,b = 0;
		if(account.getHigh()!=null)
		if(account.getSex().equals("F")) {
			a=account.getHigh();
			b=a+20;
		}
		else {
			b=account.getHigh();
			a=b-20;
		}
		li = accountMapper.findByHigh(a, b,  account.getSex());
		//返回结果
		return list;
	}
	
	@Override
	public Account findAccountByUsername(String username) {
		return accountMapper.findAccountByUsername(username);
		
	}

	@Override
	public List<Account> dynamicSearch(String high, String salary, String area) {
		// TODO Auto-generated method stub
		return null;
	}

}
