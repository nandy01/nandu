package com.niit.jewellcartbackend.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.User;
import com.niit.jewellcartbackend.model.UserDetails;

@Repository("userDao")
public class UserDetailsDAOImpl implements UserDetailsDAO{
	@Autowired
	private SessionFactory sessionFactory;
	private String password;


	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
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

	public List<User> list1() {
		
		@SuppressWarnings("unchecked")
		List<User> list1 = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list1;
	}

	public void saveOrUpdate(User user) {
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(user);
		s.flush();
		
	}

	public boolean isValidUser(String name) {
		String hql = "from User where name= '" + name + "' and " + " password ='" + password+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) ((Criteria) query).list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	
	}

	


	
	/*@Transactional
	public User get(String id) {
		String hql = "from User where id=" + "'"+ id+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) ((Criteria) query).list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
@Transactional
	public boolean isValidUser( String name, boolean isAdmin) {
		// TODO Auto-generated method stub
		return false;
	}*/
	
	/*@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
		String hql = "from User where id= '" + id + "' and " + " password ='" + password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}*/

}