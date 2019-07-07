package com.loveLight.service.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveLight.entity.LiuYan;
import com.loveLight.mapper.LiuYanMapper;
import com.loveLight.service.LiuYanService;

@Service
public class LiuYanServiceImpl implements LiuYanService{
	@Autowired
	private LiuYanMapper liuYanMapper;
	
	
	@Override
	public int insertLiuYan(String username,String liuyanren,String neirong) {
		Date date = new Date();   	  
		SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
		String timeString = ft.format(date.getTime());
		Timestamp timestamp = new Timestamp(System.currentTimeMillis()); //2013-01-14 22:45:36.484 
		timestamp = Timestamp.valueOf(timeString);
		LiuYan liuYan =new LiuYan();
		liuYan.setUsername(username);
		liuYan.setLiuyanren(liuyanren);
		liuYan.setNeirong(neirong);
		liuYan.setTime(timestamp);
		return liuYanMapper.insertLiuYan(liuYan);
	}

	@Override
	public List<LiuYan> search(String username) {
		return liuYanMapper.search(username);
	}

}
