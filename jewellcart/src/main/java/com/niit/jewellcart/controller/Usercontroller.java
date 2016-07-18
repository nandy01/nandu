package com.niit.jewellcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.jewellcartbackend.dao.UserDetailsDAO;
import com.niit.jewellcartbackend.model.UserDetails;

@Controller
public class Usercontroller {
	
	@Autowired
    private UserDetailsDAO userDAO1;
    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
    public String listUsers(){
	
	return "SignUp";
}


 @RequestMapping(value="adduser", method = RequestMethod.POST)
 
  public String addUser(@ModelAttribute UserDetails username){
	 System.out.println("welcome User");
  userDAO1.saveOrUpdate(username);
  return "Welcome";

}




}
		
					

