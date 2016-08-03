package com.niit.jewellcartbackend.dao;

import java.util.List;

import javax.persistence.Query;

import org.h2.engine.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.UserDetails;

@Repository("userDao")
public class UserDetailsDAOImpl implements UserDetailsDAO{
	@Autowired
	private SessionFactory sessionFactory;
	



	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
		System.out.println("user list");
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void saveOrUpdate(UserDetails user) {
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(user);
		s.flush();
	}

	

	@Transactional
	public boolean isValidUser(String username, String password, boolean isAdmin) {
		System.out.println("into validuser");
		String hql = "from User where name='"+username+"'"+" and "+"password ='"+password+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) ((Criteria) query).list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}

	public User get(int id) {
		String hql = "from User where id=" + id;
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) ((Criteria) query).list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
		
	}

	public void delete(int id) {
		UserDetails user = new UserDetails();
		user.setId(id);
		sessionFactory.getCurrentSession().delete(user);
		
	}


}
	


	
	