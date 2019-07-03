package com.loveLight.entity;

public class AccountExtend {
	private String username;
	private String trueName;
	private String birthday;
	private String marry;		//结婚为Y 离婚为N  离异为L
	private String edu;			//小学1 初中2 高中3 本科4 硕士5 博士6
	private int salary;
	private String phoneNum;
	private String introduction;
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	@Override
	public String toString() {
		return "AccountExtend [username=" + username + ", trueName=" + trueName + ", birthday=" + birthday + ", marry="
				+ marry + ", edu=" + edu + ", salary=" + salary + ", phoneNum=" + phoneNum + ", introduction="
				+ introduction + "]";
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
