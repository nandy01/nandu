package com.niit.jewellcart.handler;


	
	

	import org.springframework.binding.message.MessageBuilder;
	import org.springframework.binding.message.MessageContext;
	import org.springframework.stereotype.Component;

import com.niit.jewellcart.bean.UserDetails;



	@Component
	public class RegistrationHandler {

		public UserDetails initFlow(){
			return new UserDetails();
		}

		public String validateDetails(UserDetails userDetails,MessageContext messageContext){
			String status = "success";
			
			if(userDetails.getName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Name cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getPassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"password").defaultText("Password cannot be Empty").build());
				status = "failure";
			}
		
			if(userDetails.getEmail().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"email").defaultText("Email cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getDob().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"mobile").defaultText("Mobile cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getAddress().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"address").defaultText("Address cannot be Empty").build());
				status = "failure";
			}
			
			if(userDetails.getGender().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"gender").defaultText("Gender cannot be Empty").build());
				status = "failure";
			}
			
			return status;
		}
	}


