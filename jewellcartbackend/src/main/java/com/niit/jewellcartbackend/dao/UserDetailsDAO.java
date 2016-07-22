package com.niit.jewellcartbackend.dao;

import java.util.List;

import com.niit.jewellcartbackend.model.User;
import com.niit.jewellcartbackend.model.UserDetails;

public interface UserDetailsDAO {
	
	public List<UserDetails> list();
	public List<User>list1();
	

	public void saveOrUpdate(User user);

	public void saveOrUpdate(UserDetails userDetails);

	

	public boolean isValid(String id, String name,boolean isAdmin);






}
