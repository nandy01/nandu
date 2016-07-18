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
import com.niit.jewellcartbackend.model.Supplier;

@Repository("supplierDao")
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

@Transactional
	
		
		@SuppressWarnings("unchecked")
public List<Supplier> list() {
			System.out.println("list");
			Session s=sessionFactory.getCurrentSession();
			Criteria q=s.createCriteria(Supplier.class);
			List<Supplier> l=new ArrayList<Supplier>();
			l=q.list();
			return l;
		}	
	

	

@Transactional
public Supplier get(int id) {
	String t="from Supplier where id=" + "'"+ id +"'";
	Query query=sessionFactory.getCurrentSession().createQuery(t);
	
@SuppressWarnings("unchecked")
	List<Supplier> listSupplier = (List<Supplier>) query.list();
	
	if(listSupplier !=null && !listSupplier.isEmpty()){
		return listSupplier.get(0);
		
	}
	
	return null;
}


@Transactional
	public void saveOrUpdate(Supplier supplier) {
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(supplier);
		s.flush();
		
	}
	
		
	

@Transactional
	public void delete(int id) {
		Supplier sup1 = new Supplier();
		sup1.setId(id);
		sessionFactory.getCurrentSession().delete(sup1);
		
	}




}