package com.loveLight.mapper;

import com.loveLight.entity.AccountExtend;

public interface AccountExtendMapper {
	
	AccountExtend findAccountExtendByUsername(String username);// 通过用户名找到整个扩展信息
	
	int updateAccountExtend(AccountExtend accountExtend);	//更新
	
	int insertAccountExtend(String username);	//插入
}
