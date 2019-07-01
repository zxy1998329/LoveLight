package com.loveLight.mapper;

import java.util.List;
import java.util.Map;

import javax.activation.MailcapCommandMap;

import com.loveLight.entity.Account;

public interface AccountMapper {
	
	String findAccount(Account account);
	
<<<<<<< HEAD
	Account findAccountByUsername(String username);
=======
	Account findAccountInfoByUsername(String username); //通过username查找整个账号的基本信息
	
>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git

	int insertAll(Account account);		//注册的时候插入账号的所有信息

	int reset(Map<String, String>parameter);
	
<<<<<<< HEAD
	List<Account> findByHigh(int a,int b,String sex);  //通过身高查找匹配的人  a<身高<b
	
	List<Account> findBySalary();	 //通过收入查找匹配的人
	
	List<Account> findByArea(String area ,String sex);	 //通过地区查找匹配的人
	
	List<Account> findByEdu(String edu,String sex);  //通过教育程度查找匹配的人
	
	List<Account> dynamicSearch(String high,String salary,String area);
=======

	int updateAccount(Account account);		//更新账号信息

	Account updateByRole(String username);
	
	Account findByUsername(String username);

>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git
}
