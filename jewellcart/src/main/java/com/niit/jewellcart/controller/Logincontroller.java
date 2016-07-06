package com.niit.jewellcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellcart.dao.Userdao;



@Controller
public class Logincontroller {
	@Autowired
	Userdao userdao;
	@RequestMapping("/isvaliduser")
	public ModelAndView showmessage(@RequestParam(value="name")String name,
			@RequestParam(value="password")String password){
	System.out.println("is valid");
	String message;
	ModelAndView mv;
	if (userdao.isvaliduser(name,password))
	{
		
		message="valid credentials";
		mv=new ModelAndView("Welcome");
		
	}
	else
	{
		message="invalid credentials";
		mv=new ModelAndView("index");
		
	}
    
    mv.addObject("message",message);
    mv.addObject("name",name);
    return mv;
}
	
		@RequestMapping("/")
		public String goToindex()
		{
			
			return "index";
		}
	@RequestMapping("/Welcome")
	public String goToWelcome()
	{
		return "Welcome";
		}
	@RequestMapping("/SignUp")
	public String goToSignUp()
	{
		return "SignUp";
		}
	@RequestMapping("/Contact Us")
	public String goToContactUs()
	{
		return "Contact Us";
		}
	

	
	}

