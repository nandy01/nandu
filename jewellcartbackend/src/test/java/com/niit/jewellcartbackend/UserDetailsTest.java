package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.UserDetailsDAO;
import com.niit.jewellcartbackend.model.UserDetails;

public class UserDetailsTest {
	
	static AnnotationConfigApplicationContext context;
	
	public static void main(String[] args) {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();
		UserDetailsDAO userDAO = (UserDetailsDAO) context.getBean("userDao");
		UserDetails use=new UserDetails();

		
		use.setUsername("anu");
		use.setMobile("9445821039");
		use.setEmail("nan@nan");
	    use.setPassword("abc");
	   
	    
	   
	    
		
		
		userDAO.saveOrUpdate(use);
		
		
	
		
		List<UserDetails> list = new ArrayList<UserDetails>();
		list = userDAO.list();
		for (UserDetails s : list) {
			System.out.println(s.getUsername()+":"+s.getMobile()+":"+ s.getPassword()+":"+s.getAddress()
			+":"+s.getEmail()+s.getId());


}
}
}
