package com.niit.jewellcartbackend.dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.Product;
@Repository("productDao")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
		
			
			@SuppressWarnings("unchecked")
	public List<Product> list() {
				System.out.println("list");
				Session s=sessionFactory.getCurrentSession();
				Criteria q=s.createCriteria(Product.class);
				List<Product> l=new ArrayList<Product>();
				l=q.list();
				return l;
			}	
		

		

	@Transactional
		public Product get(String id) {
			
			
			
			return null;
		}

	@Transactional
		public void saveOrUpdate(Product product) {
			Session s=sessionFactory.openSession();
			s.saveOrUpdate(product);
			s.flush();
			
		}
		
			
		

	@Transactional
		public void delete(String id) {
			Product pro1 = new Product();
			pro1.setId(id);
			sessionFactory.getCurrentSession().delete(pro1);
			
		}

}
