package com.niit.jewellcart.controller;

import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellcartbackend.dao.UserDetailsDAO;
import com.niit.jewellcartbackend.model.UserDetails;
import com.niit.jewellcartbackend.validation.userValidation;



@Controller
public class Logincontroller {
	@Autowired
	private userValidation Uservalid;
	@Autowired
 private UserDetailsDAO userdao;
	private static final Logger logger = LoggerFactory
			.getLogger(UserDetails.class);
	    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
	    public String viewLogin(Map<String, Object> model) {
	        UserDetails user = new UserDetails();
	        model.put("userForm", user);
	        return "SignUp";
	    }
	    @RequestMapping(value = "loginto", method = RequestMethod.POST)
		public String save(
				@Valid  @ModelAttribute("userForm") UserDetails userdetails,
				BindingResult result, Model model) {
	    	
	    	Uservalid.validate(userdetails,result);
			if (result.hasErrors()) {
				
				logger.info("Returning SignUp page");
				return "SignUP";
			}
			userdao.saveOrUpdate(userdetails);
				return "Welcome";
				
			}
			
			
			
			 
	    
	   @RequestMapping("/login")
	    public String goLogin()
	    {
	    	return "login";
	    }
	       
	    @RequestMapping("/login1")
		public String log(@RequestParam(value="error",required=false) String error,Authentication Auth){
			
			System.out.println("inside login");
			System.out.println(Auth);
			System.out.println(error);
			
			if(error!=null){
				return "login";
			}
			
			return "Welcome";
			
		}
	    
	   /* @RequestMapping("/SignUp")
		public ModelAndView registerUser(@ModelAttribute UserDetails userdetails) {
	    	System.out.println("signup");
	    	userdao.saveOrUpdate(userdetails);
		  return new ModelAndView("/Welcome");
	    }*/
	
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
		@RequestMapping("/SendEmail")
		public String goToSendEmail()
		{
			
			return "SendEmail";
		}
				@RequestMapping("/cart")
		public String goTocart()
		{
			
			return "cart";
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
	
	
	@RequestMapping("/EmailForm")
	public String gotoEmailForm()
	{
			return "EmailForm";
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