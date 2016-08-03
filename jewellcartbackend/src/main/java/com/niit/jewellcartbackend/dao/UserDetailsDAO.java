package com.niit.jewellcartbackend.dao;

import java.util.List;

import org.h2.engine.User;

import com.niit.jewellcartbackend.model.UserDetails;

public interface UserDetailsDAO {
	
	public List<UserDetails> list();
	
	
	public User get(int id);


	public void saveOrUpdate(UserDetails userDetails);

	public void delete(int id);

	public boolean isValidUser( String username, String password,boolean isAdmin);






}
