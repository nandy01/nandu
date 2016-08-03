package com.niit.jewellcartbackend.dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.jewellcartbackend.model.Category;
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
		public Product get(int id) {
		
			String t="from Product where id=" + "'"+ id +"'";
			Query query=sessionFactory.getCurrentSession().createQuery(t);
			
		@SuppressWarnings("unchecked")
			List<Product> listProduct = (List<Product>) query.list();
			
		if(listProduct !=null && !listProduct.isEmpty()){
			return listProduct.get(0);
			
			
			
			
		}
		return null;
	}

	
		
	@Transactional
		public void saveOrUpdate(Product product) {
			Session s=sessionFactory.openSession();
			s.saveOrUpdate(product);
			s.flush();
			
		}
		
			
		

	@Transactional
		public void delete(int id) {
			Product pro1 = new Product();
			pro1.setId(id);
			sessionFactory.getCurrentSession().delete(pro1);
			
		}
@Transactional
	public Product getbyName(String name) {
		String t="from Product where name=" + "'"+ name +"'";
		Query query=sessionFactory.getCurrentSession().createQuery(t);
		
	@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		System.out.println(listProduct);
	if(listProduct !=null && !listProduct.isEmpty()){
		return listProduct.get(0);
		
		
		
		
	}

		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> getProd(int catid)
	{
		System.out.println("category information");
		Criteria cri=sessionFactory.getCurrentSession().createCriteria(Product.class);
		cri.add(Restrictions.eq("category_id", catid));
		List <Product> l=cri.list();
		return l;
	}

	@Transactional
	public int getCateId(String catname)
	{
		
		System.out.println("catname");
	
		Session sess=sessionFactory.getCurrentSession();
		Criteria cri=sess.createCriteria(Category.class);
		System.out.println("category");
		cri.add(Restrictions.eq("name", catname));
		List <Category> l=cri.list();
		System.out.println(l);
		int catid=0;
		for(Category c:l)
		{
			System.out.println(c.getName());
			catid=c.getId();
		}
		return catid;
	}
}
