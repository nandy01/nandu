package com.niit.shopjewell;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.niit.shopjewell.bean.Category;
import com.niit.shopjewell.dao.Categorydao;
import com.niit.shopjewell.dao.Userdao;

@Controller
public class Categorycontroller {
	@Autowired
	Categorydao categorydao;
	@RequestMapping("Category")
	
	public ModelAndView Categories() {
	System.out.println("Categories");
	
	List <Category> categoryList = Categorydao.Categories();   
	
	ModelAndView mv = new ModelAndView("/categoryList");   
	mv.addObject("categoryList", categoryList);            
	return mv;
	}

}