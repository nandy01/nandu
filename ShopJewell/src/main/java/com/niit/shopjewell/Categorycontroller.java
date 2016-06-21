package com.niit.shopjewell;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.niit.shopjewell.bean.Category;
import com.niit.shopjewell.dao.Categorydao;
import com.niit.shopjewell.dao.Userdao;

@Controller
public class  Categorycontroller{

	@Autowired
	private Categorydao categorydao;
	

	@RequestMapping("/addCategory")
	public ModelAndView addCategory(@RequestParam(value = "categoryName") String categoryName,
			@RequestParam(value = "categoryDescription") String categoryDescription) {

		System.out.println("addCategory");
		String message = "Successfully created";
		ModelAndView mv = new ModelAndView("/success");
		mv.addObject("message", message);

		return mv;
	}
	
	
	
	@RequestMapping("/getAllCategories")
	public ModelAndView getAllCategories() {

		System.out.println("getAllCategories");
		
		List<Category> categoryList = categorydao.getAllCategories();
		
		ModelAndView mv = new ModelAndView("/categoryList");
		mv.addObject("categoryList", categoryList);

		return mv;
	}
	
	
	@RequestMapping("/updateCategories")
	public ModelAndView updateCategory(@ModelAttribute("category")ArrayList<Category> categories)
	{
		int count = categorydao.updateCategories(categories);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("/categoryList");
		
		String message = count + " record(s) are updated";
		
	    List categoryList = categorydao.getAllCategories();
		mv.addObject("message",message);
		mv.addObject("categoryList", categoryList);
		
		return mv;
	}


}