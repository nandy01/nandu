package com.niit.jewellcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Usercontroller {
@RequestMapping("/")
public String goToWelcome()
{
	
	return "Welcome";
}
		@RequestMapping("/index")
		public String goToindex()
		{
			return "index";
			}
		
					}

