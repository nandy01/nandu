package com.niit.shopjewell.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shopjewell.bean.Category;
@Repository
public class Categorydao {

	
		public List<Category> getAllCategories() {

			List<Category> list = new ArrayList<Category>();
			Category c1 = new Category();
			c1.setId("CAT_Earring");
			c1.setName("Earring");
			c1.setDescription("This is Earring");

			list.add(c1);

			c1 = new Category();
			c1.setId("CAT_Bangle");
			c1.setName("Bangle");
			c1.setDescription("This is Bangle");

			list.add(c1);

			c1 = new Category();
			c1.setId("CAT_Necklace");
			c1.setName("Necklace");
			c1.setDescription("This is Necklace");

			list.add(c1);

			return list;

		}
		
		
		public int updateCategories(List<Category>  categoryList)
		{
			
			
			
			return 1 ;
		}
	

	
	}
	

