package com.loveLight.mapper;

import java.util.List;

import com.loveLight.entity.PhotoWall;

public interface PhotoWallMapper {
	
	int insertRecord(PhotoWall photoWall);
	
	List<PhotoWall> findRecordsByUsername(String username);
	
	int deleteRecordBySrc(String src);
	
}
