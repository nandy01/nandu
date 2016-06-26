package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.model.Category;
public class AppTest {
	static AnnotationConfigApplicationContext context;
	static CategoryDAO categorydao;
	public AppTest()
	{
		categorydao=(CategoryDAO) context.getBean("CategoryDAO");
	}
	
    @SuppressWarnings("unchecked")
	public static void main(String[] args) {
	
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();
		
		AppTest app=new AppTest();
		categorydao.delete("cat");
		
		System.out.println("helo");
		
		System.out.println("welcome into dao");
		List<Category> li=new ArrayList<Category>();
		li=categorydao.list();
		for(Category c:li)
		{
			System.out.println(c.getId()+":"+c.getName()+":"+c.getDescription());
			
		}
		
		
		
		}



	}

