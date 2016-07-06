package com.niit.jewellcartbackend.dao;

import java.util.List;

import com.niit.jewellcartbackend.model.Product;

public interface ProductDAO {
	
		public List<Product> list();

		public Product get(String id);

		public void saveOrUpdate(Product product);

		public void delete(String id);

}

