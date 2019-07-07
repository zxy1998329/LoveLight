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
@RequestMapping(value="photoForOther")
public class PhotoForOtherController {
	@Autowired
	PhotoWallMapper photoWallMapper;
	

	
	@RequestMapping(method=RequestMethod.GET)
	public String photowall(HttpSession session, 
			@RequestParam("otherUsername") String otherUsername) {
		//建立照片列表session
		List<PhotoWall> pwList = photoWallMapper.findRecordsByUsername(otherUsername);
		session.setAttribute("pwList", pwList);
		return "personalCenter/photoForOther";
	}
	
}
