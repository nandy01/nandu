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
	public ModelAndView showmessage(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password){
	System.out.println("is valid");
	String message;
	ModelAndView mv;
	if (userdao.isvaliduser(username,password))
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
    mv.addObject("name",username);
    return mv;
}
	
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
	@RequestMapping("/adminHome")
public String gotoadminHome()
{
		return "adminHome";
}
	@RequestMapping("/fileuploadform")
	public String gotofileuploadform()
	{
			return "fileuploadform";
	}
	@RequestMapping("/productinfo")
	public String gotoproductinfo()
	{
			return "productinfo";
	}
	@RequestMapping("/emailForm")
	public String gotoemailForm()
	{
			return "emailForm";
	}
	@RequestMapping("/confirmDetails")
	public String gotoconfirmDetails()
	{
			return "confirmDetails";
	}
	@RequestMapping("/exception")
	public String gotoexception()
	{
			return "exception";
	}
	@RequestMapping("SignUp")
	public String gotoSignUp(){
		return "welcome";
	}
	

	
	}

