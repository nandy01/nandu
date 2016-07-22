package com.niit.jewellcart.controller;

import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.jewellcartbackend.model.UserDetails;
import com.niit.jewellcartbackend.validation.userValidation;



@Controller
public class Logincontroller {
	@Autowired
	private userValidation Uservalid;
	private static final Logger logger = LoggerFactory
			.getLogger(UserDetails.class);
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String viewLogin(Map<String, Object> model) {
	        UserDetails user = new UserDetails();
	        model.put("userForm", user);
	        return "login";
	    }
	    @RequestMapping(value = "loginto", method = RequestMethod.POST)
		public String save(
				@Valid  @ModelAttribute("userForm") UserDetails userdetails,
				BindingResult result, Model model) {
	    	Uservalid.validate(userdetails,result);
			if (result.hasErrors()) {
				logger.info("Returning login.jsp page");
				return "login";
			}
			else{
				return "Welcome";
				
			}
			
			
			
			 }
			
	
	    
	
	    @RequestMapping("/Ring")
		public String goToring()
		{
			
			return "Ring";
		}
	
		@RequestMapping("/")
		public String goToWelcome()
		{
			
			return "Welcome";
		}
		@RequestMapping("/Welcome")
		public String goToWelcome1()
		{
			
			return "Welcome";
		}
		@RequestMapping("/bangle")
		public String goTobangle()
		{
			
			return "bangle";
		}
		@RequestMapping("/cart")
		public String goTocart()
		{
			
			return "cart";
		}
		@RequestMapping("/Earring")
		public String goToEarring()
		{
			
			return "Earring";
		}
		@RequestMapping("/login")
		public String goTologin()
		{
			
			return "login";
		}
		
	
	@RequestMapping("/SignUp")
	public String goToSignUp()
	{
		return "Welcome";
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
	@RequestMapping("/paymentform")
	public String gotopaymentform()
	{
		return "paymentform";
	}
	@RequestMapping("/emailUtility")
	public String gotoemailUtility()
	{
			return "emailUtility";
	}
	public class cartController {
		@RequestMapping("/cartDisplay")
		public String checkout()
		{
			
			return "redirect:/cartDisplay?cartDisplay";
		}
		
		
	

	
	}

}