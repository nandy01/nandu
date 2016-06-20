package com.niit.shopjewell.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/")
	public String goToWelcome()
	{
		return "Welcome";
	}
	
	@RequestMapping("/login")
	public String goTologin()
	{
		return "login";
	}
}
