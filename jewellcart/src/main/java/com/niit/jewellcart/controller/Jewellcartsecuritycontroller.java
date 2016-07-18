package com.niit.jewellcart.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Jewellcartsecuritycontroller {
	  @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	    public String homePage(ModelMap model) {
	        model.addAttribute("greeting", "Hi, Welcome to mysite");
	        return "Welcome";
	    }
	 
	    @RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	    public String adminPage(ModelMap model) {
	        model.addAttribute("user", getPrincipal());
	        return "adminHome";
	    }
	 
	   
	 
	    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	    public String accessDeniedPage(ModelMap model) {
	        model.addAttribute("user", getPrincipal());
	        return "accessDenied";
	    }
	 
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String loginPage() {
	        return "login";
	    }
	    
	    
	        private String getPrincipal(){
	        String username = null;
	        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	 
	        if (principal instanceof UserDetails) {
	            username = ((UserDetails)principal).getUsername();
	        } else {
	            username = principal.toString();
	        }
	        return username;
	    }

}
