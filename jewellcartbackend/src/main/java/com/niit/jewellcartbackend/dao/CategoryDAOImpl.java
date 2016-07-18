package com.niit.jewellcartbackend.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.Category;

@Repository("CategoryDao")
public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
	private SessionFactory sessionFactory;


	public CategoryDAOImpl(SessionFactory sessionFactory) {
		System.out.println("Session factory");
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public List<Category> list() {
		System.out.println("list");
		Session s=sessionFactory.getCurrentSession();
		Criteria q=s.createCriteria(Category.class);
		List<Category> l=new ArrayList<Category>();
		l=q.list();
		return l;
		
	}
	@Transactional
	public Category get(int id) {
		String t="from Category where id=" + "'"+ id +"'";
		Query query=sessionFactory.getCurrentSession().createQuery(t);
		
	@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if(listCategory !=null && !listCategory.isEmpty()){
			return listCategory.get(0);
			
		}
		
		return null;
	}
	@Transactional
	public void saveOrUpdate(Category category) {
		
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(category);
		s.flush();
	}
	@Transactional
	public void delete(int id) {
		System.out.println(id);
	Category cat1=new Category();
	cat1.setId(id);
	sessionFactory.getCurrentSession().delete(cat1);
	
		
	}
	
	

}

