package com.loveLight.service.impl;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.loveLight.service.PassWordService;

@Service
public class PassWordServiceImpl implements PassWordService {

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

}
