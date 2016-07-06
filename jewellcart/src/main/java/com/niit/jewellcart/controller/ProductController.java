package com.niit.jewellcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellcartbackend.dao.ProductDAO;
import com.niit.jewellcartbackend.model.Category;
import com.niit.jewellcartbackend.model.Product;


@Controller
public class ProductController {
	
	
		@Autowired
		private ProductDAO productDAO1;
		



	@RequestMapping("/getpro")
	public ModelAndView getAllproducts() {
		List<Product> productsList = productDAO1.list();
		ModelAndView mv = new ModelAndView("/productList");
		mv.addObject("productList", productsList);
		return mv;
	}

	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute Product product) {
		System.out.println("welcome into addpro");
		productDAO1.saveOrUpdate(product);
		return "redirect:/getpro";
	 }
	
	@RequestMapping("/Form1")
	public String gotoForm1()
	{
		return "Form1";
	}
	@RequestMapping("productlist/remove/{id}")
	public String removeProduct(@PathVariable("id") String id){
		productDAO1.delete(id);
		return "redirect:/getpro";

	}
	@RequestMapping("productlist/edit/{id}")
	
	public String editCategory(@PathVariable("id") String id){
		
	   return "redirect:/Form1";
	}

}
