package com.niit.jewellcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.model.Category;
import com.niit.jewellcartbackend.model.Product;

@Controller
public class Catcontroller {
	
		@Autowired
		    private CategoryDAO categoryDAO1;
		    @RequestMapping(value = "/categorylist", method = RequestMethod.GET)
		    public String listCategorys(Model model) {
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", this.categoryDAO1.list());
			return "categorylist";
		}
		

		 @RequestMapping(value="/categorylist/add", method = RequestMethod.POST)
          public String addCategory(@ModelAttribute("category") Category category){
			 
		  categoryDAO1.saveOrUpdate(category);
		  return "redirect:/categorylist";

		}

		@RequestMapping("categorylist/remove/{id}")
		   public String removeCategory(@PathVariable("id") int id,ModelMap model) throws Exception{
			
		   try {
			categoryDAO1.delete(id);
			model.addAttribute("message","Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message",e.getMessage());
			e.printStackTrace();
		}
		  
		    return "redirect:/categorylist";
		}

		@RequestMapping("categorylist/edit/{id}")
		public String editCategory(@PathVariable("id") int id, Model model){
			System.out.println("editCategory");
		    model.addAttribute("category", this.categoryDAO1.get(id));
		    model.addAttribute("listCategorys", this.categoryDAO1.list());
		    return "categorylist";
	

		}
}
