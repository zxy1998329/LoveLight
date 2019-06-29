package com.loveLight.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.loveLight.mapper.AccountMapper;
import com.loveLight.service.PassWordService;

@Service
public class PassWordServiceImpl implements PassWordService {

	@Autowired
	private AccountMapper accountMapper;
	
	
	@Override
	public String sendEmail(String email) {
		String randomNum = createRandomNum(6);// 随机生成6位数的验证码
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
				mailSender.setHost("smtp.qq.com");// qq邮箱服务器
				mailSender.setPort(587);// 端口
				mailSender.setUsername("546029685@qq.com");// 发送者 的邮箱
				mailSender.setPassword("lbvlzhzetrpwbfjd");// POP3/SMTP服务授权码
				SimpleMailMessage mail = new SimpleMailMessage();
				mail.setTo(email);// 接受者
				mail.setFrom("546029685@qq.com");// 发送者
				mail.setSubject("邮箱验证");// 主题
				mail.setText("您好！您的邮箱验证码:" + randomNum + " 打死也不能告诉别人！");// 邮件内容
				mailSender.send(mail);
			}
			
		}).start();
		return randomNum;
	}
	
	public static String createRandomNum(int num) {
		String randomNumStr = "";
		for (int i = 0; i < num; i++) {
			int randomNum = (int) (Math.random() * 10);
			randomNumStr += randomNum;
		}
		return randomNumStr;
	}
	
	public boolean emailMatch(String submit,String num) {
		
		if(submit.equals(num))
			return true;
		else
			return false;
	}

	
	public boolean reset(String newPassWord,String account) {
		
		Map<String, String>parameter = new HashMap<String, String>();
		parameter.put("account", account);
		parameter.put("newPassWord",newPassWord);
		int i = accountMapper.reset(parameter);
		if(i>0)
			return true;
		else 
			return false;
		
		
	}
}
