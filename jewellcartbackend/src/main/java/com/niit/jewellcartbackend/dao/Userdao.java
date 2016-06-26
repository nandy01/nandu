package com.niit.jewellcartbackend.dao;

import java.util.List;

import com.niit.jewellcartbackend.model.User;

public interface Userdao {
	
	public List<User> list();
	public User get(String id);





}
