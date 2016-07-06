package com.niit.jewellcartbackend.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.Supplier;
import com.niit.jewellcartbackend.model.User;

@Repository("userDao")
public class UserDAOImpl implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;


	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

    @SuppressWarnings("unchecked")
	@Transactional
	public List<User> list() {
    	System.out.println("list");
		Session s=sessionFactory.getCurrentSession();
		Criteria q=s.createCriteria(User.class);
		List<User> l=new ArrayList<User>();
		l=q.list();
		return l;
	}
@Transactional
	public User get(String id) {
		
		return null;
	}
@Transactional
	public void saveOrUpdate(User user) {
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(user);
		s.flush();
		
	}
@Transactional
	public void delete(String id) {
		Supplier niit = new Supplier();
		niit.setId(id);
		sessionFactory.getCurrentSession().delete(niit);
		
		
	}
@Transactional
	public boolean isValidUser(String id, String name, boolean isAdmin) {
		// TODO Auto-generated method stub
		return false;
	}

	/*public boolean isValidUser(String id, String name, boolean isAdmin) {
		String hql = "from User where id= '" + id + "' and " + " password ='" + password+"'";
		Query query =sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		


		
		return false;
	}*/

	
	}


	
	


