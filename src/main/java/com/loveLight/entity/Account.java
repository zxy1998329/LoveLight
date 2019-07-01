package com.loveLight.entity;

public class Account {
	
	private String username;
	private String password;
	private String question;//密保问题
	private String answer;//密保答案
	private String name;
	private String sex; //F 女性----M  男性
	private Integer high;
	private String area;
<<<<<<< HEAD
	
	private AccountExtend accountExtend;

=======
	private Integer role;//角色/权限
	
	
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getHigh() {
		return high;
	}
	public void setHigh(Integer high) {
		this.high = high;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	
	
	public AccountExtend getAccountExtend() {
		return accountExtend;
	}
	public void setAccountExtend(AccountExtend accountExtend) {
		this.accountExtend = accountExtend;
	}
	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password + ", question=" + question + ", answer="
<<<<<<< HEAD
				+ answer + ", name=" + name + ", sex=" + sex + ", high=" + high + ", area=" + area + ", accountExtend="
				+ accountExtend + "]";
=======
				+ answer + ", name=" + name + ", sex=" + sex + ", high=" + high + ", area=" + area + ", role=" + role
				+ "]";
>>>>>>> branch 'dev' of https://github.com/zxy1998329/LoveLight.git
	}
	
	

	
	
}
