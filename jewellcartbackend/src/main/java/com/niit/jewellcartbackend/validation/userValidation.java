package com.niit.jewellcartbackend.validation;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.niit.jewellcartbackend.model.UserDetails;

@Controller
public class userValidation implements Validator{
public boolean supports(Class<?> clas) {
		
		return UserDetails.class.isAssignableFrom(clas);
	}
	public void validate(Object target, Errors errors) {
		
			
		ValidationUtils.rejectIfEmpty(errors, "email", "error.email", "Email is required.");
		ValidationUtils.rejectIfEmpty(errors, "username", "error.username", "Username cannot be empty");
		ValidationUtils.rejectIfEmpty(errors, "mobile", "error.mobile", "MobileNo cannot be empty");
		ValidationUtils.rejectIfEmpty(errors, "password", "error.password", "Password cannot be empty");
			
		}

	}



