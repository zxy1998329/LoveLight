package com.loveLight.entity;

public class PhotoWall {
	String username;
	String day;
	String time;
	String info;
	String src;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	@Override
	public String toString() {
		return "PhotoWall [username=" + username + ", day=" + day + ", time=" + time + ", info=" + info + ", src=" + src
				+ "]";
	}
	
}
