package com.loveLight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testController {

	@RequestMapping(value="testBase",method=RequestMethod.GET)
	String testBase() {
		return "friendslist";
	}
}
