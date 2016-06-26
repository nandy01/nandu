package com.niit.jewellcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellcart.dao.Userdao;



@Controller
public class Logincontroller {
	
	Userdao userdao;
	@RequestMapping("/isvalidUser")
	public ModelAndView showmessage(@RequestParam(value="name")String name,
			@RequestParam(value="password")String password){
	System.out.println("is valid");
	String message;
	if (userdao.isvaliduser(name,password))
	{
		
		message="valid credentials";
	}
	else
	{
		message="invalid credentials";
		
	}
    ModelAndView mv=new ModelAndView("Welcome");
    mv.addObject("message",message);
    mv.addObject("name",name);
    return mv;
}

	
	}

