package com.loveLight.mapper;

import java.util.List;

import com.loveLight.entity.LiuYan;

public interface LiuYanMapper {
	int insertLiuYan(LiuYan liuyan);
	List<LiuYan> search(String username);
}
