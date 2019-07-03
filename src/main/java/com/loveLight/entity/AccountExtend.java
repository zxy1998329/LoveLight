package com.loveLight.entity;

public class AccountExtend {
	private String birthday;
	private String marry;
	private String edu;
	private int salary;
	private String phoneNum;
	private String introduction;
	private String trueName;
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
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
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	@Override
	public String toString() {
		return "AccountExtend [birthday=" + birthday + ", marry=" + marry + ", edu=" + edu + ", salary=" + salary
				+ ", phoneNum=" + phoneNum + ", introduction=" + introduction + ", trueName=" + trueName + "]";
	}
	
	
}
