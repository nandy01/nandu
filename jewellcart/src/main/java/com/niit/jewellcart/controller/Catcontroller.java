package com.niit.jewellcart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.model.Category;

@Controller
public class Catcontroller {
	
		@Autowired
		private CategoryDAO categoryDAO1;
		
/*
		@RequestMapping("/addCategory")
		public ModelAndView addCategory(@ModelAttribute Category category) {
			categoryDAO1.saveOrUpdate(category);
		  return new ModelAndView("/adminHome");
		 }
	
	*/
	
	@RequestMapping("/getcat")
	public ModelAndView getAllCategories() {

		System.out.println("getcat");
		
		List<Category> categoryList = categoryDAO1.list();
		
		ModelAndView mv = new ModelAndView("/prod");
		mv.addObject("categoryList", categoryList);

		return mv;
	}
	/*
	@RequestMapping("/updateCategories")
	public ModelAndView updateCategory(@ModelAttribute("category") ArrayList<Category> categories)
	{
		Category c =categories.get(0);
		categoryDAO1.saveOrUpdate(c);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("/categoryList");
		
	    List<Category> categoryList = categoryDAO1.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
	}

*/
}
