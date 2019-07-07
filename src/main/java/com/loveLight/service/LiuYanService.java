package com.loveLight.service;

import java.util.List;

import com.loveLight.entity.LiuYan;

public interface LiuYanService {
	int insertLiuYan(String username,String liuyanren,String neirong);
	List<LiuYan> search(String username);
}
