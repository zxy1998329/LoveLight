package com.loveLight.controller.personalCenterController;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="photoWall")
public class PhotoWallController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String photowall() {
		return "personalCenter/photoWall";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String uploadPhoto(HttpSession session, HttpServletRequest request, @RequestParam("photoWall") MultipartFile photo ) throws IOException {
		String username = (String) session.getAttribute("username");//获取用户名
		String path = request.getServletContext().getRealPath("/pictures/photoWall");//获取路径
		path = path + "/" + username;//path对应这个用户的照片墙文件夹
		File f = new File(path);
		//没有则创建
		if(!f.isDirectory()) {
			f.mkdir();
		}
		//获得当前时间
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("YYYY年MM月dd日");
		String dataString = format.format(date);
		if(!photo.isEmpty()) {
			FileUtils.copyInputStreamToFile(photo.getInputStream(), 
					new File(path + "/" + dataString +".jpg" )  );
		}
		return "personalCenter/photoWall";
	}
}
