package com.niit.jewellcartbackend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.User;

@Repository("Userdao")
public class UserdaoImpl implements Userdao{
	@Autowired
	private SessionFactory sessionFactory;


	public UserdaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

    @Transactional
	public List<User> list() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<User> list = (List<User>) sessionFactory.getCurrentSession()
		.createCriteria(User.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return list;
	}

	public User get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveOrUpdate(User user) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public boolean isValidUser(String id, String name, boolean isAdmin) {
		// TODO Auto-generated method stub
		return false;
	}


	
	

}
