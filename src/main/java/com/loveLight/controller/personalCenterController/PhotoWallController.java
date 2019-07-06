package com.loveLight.controller.personalCenterController;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.loveLight.entity.PhotoWall;
import com.loveLight.mapper.PhotoWallMapper;

@Controller
@RequestMapping(value="photoWall")
public class PhotoWallController {
	
	@Autowired
	PhotoWallMapper photoWallMapper;
	
	private PhotoWall pw = new PhotoWall()  ;
	
	@RequestMapping(method=RequestMethod.GET)
	public String photowall(HttpSession session) {
		String username = (String) session.getAttribute("username");//获取用户名
		//建立照片列表session
		List<PhotoWall> pwList = photoWallMapper.findRecordsByUsername(username);
		session.setAttribute("pwList", pwList);
		return "personalCenter/photoWall";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String uploadPhoto(HttpSession session, HttpServletRequest request,
			@RequestParam("photoWall") MultipartFile photo,
			@RequestParam("info") String info ) throws IOException {
		String username = (String) session.getAttribute("username");//获取用户名
		String path = request.getServletContext().getRealPath("/pictures/photoWall");//获取路径
		path = path + "/" + username;//path对应这个用户的照片墙文件夹
		File f = new File(path);
		//创建用户对应文件夹
		if(!f.isDirectory()) {
			f.mkdir();
		}
		//获得当前时间
		Date date = new Date();
		SimpleDateFormat formatDay = new SimpleDateFormat("YYYYMMdd");
		//dataString为日期
		String dateString = formatDay.format(date);
		SimpleDateFormat formatTime = new SimpleDateFormat("HHmmss");
		//timeString为时分秒
		String timeString = formatTime.format(date);
		//pathDate对应相应的日期文件夹
		String pathDate = path + "/" +dateString;
		File f1 = new File(pathDate);
		//这一天没有上传过照片，则创建文件夹
		if(!f1.isDirectory()) {
			f1.mkdir();
		}
		//数据库记录
		pw.setUsername(username);
		pw.setDay(dateString);
		pw.setTime(timeString);
		pw.setInfo(info);	
		//这里存的是代码路径，只能取不能存
		pw.setSrc("/pictures/photoWall" + "/" + username + "/" + dateString +
				"/" + timeString + ".jpg" );
		photoWallMapper.insertRecord(pw);
		//上传照片
		if(!photo.isEmpty()) {
			FileUtils.copyInputStreamToFile(photo.getInputStream(), 
					new File(pathDate + "/" + timeString +".jpg" )  );
		}
		//建立照片列表session
		List<PhotoWall> pwList = photoWallMapper.findRecordsByUsername(username);
		session.setAttribute("pwList", pwList);
		return "personalCenter/photoWall";
	}
}
