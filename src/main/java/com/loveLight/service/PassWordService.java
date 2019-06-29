package com.loveLight.service;

public interface PassWordService {
	String sendEmail(String email);
	
	boolean emailMatch(String submit,String num);
	
	boolean reset(String newPassWord,String account);
}
