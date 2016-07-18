package com.niit.jewellcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.jewellcartbackend.dao.ProductDAO;
import com.niit.jewellcartbackend.model.Product;


@Controller
public class ProductController {
	
	
		@Autowired
		private ProductDAO productDAO1;
		
		
	    @RequestMapping(value = "/productlist", method = RequestMethod.GET)
	    public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO1.list());
		return "productlist";
	}


	 @RequestMapping(value="/productlist/add", method = RequestMethod.POST)
      public String addProduct(@ModelAttribute("product") Product product){
	  productDAO1.saveOrUpdate(product);
	  return "redirect:/productlist";

	}

	@RequestMapping("productlist/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id,ModelMap model) throws Exception{
		
	   try {
		productDAO1.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
	   //redirectAttrs.addFlashAttribute(arg0, arg1)
	    return "redirect:/productlist";
	}

	@RequestMapping("productlist/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model){
		System.out.println("editproduct");
	    model.addAttribute("product", this.productDAO1.get(id));
	    model.addAttribute("listproducts", this.productDAO1.list());
	    return "productlist";


	}
	
}		
			
			
	/*@RequestMapping("/getpro")
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

}*/
