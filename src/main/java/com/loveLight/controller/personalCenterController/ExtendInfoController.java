package com.loveLight.controller.personalCenterController;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.loveLight.entity.Account;
import com.loveLight.entity.AccountExtend;
import com.loveLight.mapper.AccountExtendMapper;
import com.loveLight.mapper.AccountMapper;

@Controller
@RequestMapping(value="/extendInfo")
public class ExtendInfoController {
	
	@Autowired
	AccountExtendMapper accountExtendMapper;
	
	@Autowired
	AccountMapper accountMapper;
	
	//跳转到前端页面，并建立AccountExtend的attribute
	@RequestMapping(method = RequestMethod.GET )
	public String extendInfo(HttpSession session, HttpServletRequest request) {
		String username = (String) session.getAttribute("username");
		AccountExtend accountExtend = accountExtendMapper.findAccountExtendByUsername(username);
		session.setAttribute("accountExtendInfo", accountExtend);
		//获取工程项目图片头像的目录
		String headPath = request.getServletContext().getRealPath("/pictures/head/");
		//创建头像图片路径attribute以便前端页面使用
		session.setAttribute("headPath", headPath);
		//创建男女session以便默认头像判断
		Account account = accountMapper.findAccountInfoByUsername(username);	//通过username获取用户的基本资料
		session.setAttribute("sex", account.getSex());		//设置session键值对，用户性别
		return "personalCenter/extendInfo";
	}
	
	@RequestMapping(method = RequestMethod.POST )
	public String updateaccountExtendInfo(AccountExtend accountExtend,HttpSession session) {
		String username = (String) session.getAttribute("username");
		accountExtend.setUsername(username);
		accountExtendMapper.updateAccountExtend(accountExtend);//更新
		session.setAttribute("accountExtendInfo", accountExtend);//重新设置attribute
		
		return "personalCenter/extendInfo";
	}
	
	//头像处理
	@RequestMapping(value="/head", method=RequestMethod.POST)
	public String uploadHead(HttpSession session, HttpServletRequest request, 
			@RequestParam("head") MultipartFile head ) throws IOException {
		//获得工程项目图片头像的文件目录
		String path = request.getServletContext().getRealPath("/pictures/head/");
		if(!head.isEmpty()) {
			FileUtils.copyInputStreamToFile(head.getInputStream(), 
					new File(path+(String)session.getAttribute("username")+".jpg" )  );
		}
		
		return "personalCenter/extendInfo";
	}
	
}
