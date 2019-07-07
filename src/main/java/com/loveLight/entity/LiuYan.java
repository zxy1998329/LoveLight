package com.loveLight.entity;

import java.sql.Timestamp;

public class LiuYan {
	private String username;
	private String liuyanren;	
	private String neirong;	
	private Timestamp time;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLiuyanren() {
		return liuyanren;
	}
	public void setLiuyanren(String liuyanren) {
		this.liuyanren = liuyanren;
	}
	public String getNeirong() {
		return neirong;
	}
	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
}
