package com.niit.jewellcartbackend.dao;

import java.util.List;

import com.niit.jewellcartbackend.model.Product;

public interface ProductDAO {
	
		public List<Product> list();

		public Product get(int id);
		public Product getbyName(String name);
		

		public void saveOrUpdate(Product product);

		public void delete(int id);
		
		public int getCateId(String catname);
		public List<Product> getProd(int catid);

}

