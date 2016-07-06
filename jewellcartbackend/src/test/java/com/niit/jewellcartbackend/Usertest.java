package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.UserDAO;
import com.niit.jewellcartbackend.model.User;

public class UserTest {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {

		AnnotationConfigApplicationContext	context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();
		UserDAO userDAO = (UserDAO) context.getBean("userDao");
		User use=new User();

		use.setId("a");
		use.setPassword("abc");
		use.setAddress("bangalore");
		use.setContactnumber(441544);
		use.setMailid("abc@bjj");
		userDAO.saveOrUpdate(use);
		
		
	userDAO.delete("a");
		
		List<User> list = new ArrayList<User>();
		list = userDAO.list();
		for (User s : list) {
			System.out.println(s.getId() + ":" + s.getPassword() + ":" +":"+s.getAddress()
			+":"+s.getMailid()+":"+s.getContactnumber());


}
}
}
