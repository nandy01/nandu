package com.niit.jewellcart.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.jewellcart.bean.Category;
import com.niit.jewellcart.dao.Categorydao;
@Controller
public class Categorycontroller {
	@Autowired
	private Categorydao categorydao;
	@RequestMapping("/prod")
	public ModelAndView getAllCategories(){
	 List<Category> categorylist=categorydao.getAllCategories();
	 String obj;
	 ModelAndView mv=new ModelAndView();
	 
	
	 Gson gson = new Gson();
	obj= gson.toJson(categorylist);

	 mv.addObject("cat",obj);
     return mv;
	
	
	}
}


