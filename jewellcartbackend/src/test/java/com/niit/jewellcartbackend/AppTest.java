package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.model.Category;

public class AppTest {
	static AnnotationConfigApplicationContext context;
	static CategoryDAO categorydao;

	@SuppressWarnings("unchecked")
	public static void main(String[] args) {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDao");
		Category ca=new Category();

		ca.setId("CAT3");
		ca.setName("DiamondBangle");
		ca.setDescription("Bangle product");
		categoryDAO.saveOrUpdate(ca);
		
		
		categoryDAO.delete("cat1");

		System.out.println("helo");

		System.out.println("welcome into dao");
		List<Category> li = new ArrayList<Category>();
		li = categorydao.list();
		for (Category c : li) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());

		}

	}

}
