package com.niit.jewellcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.niit.jewellcartbackend.dao.ProductDAO;
import com.niit.jewellcartbackend.dao.SupplierDAO;
import com.niit.jewellcartbackend.model.Category;
import com.niit.jewellcartbackend.model.Product;
import com.niit.jewellcartbackend.model.Supplier;



@Controller
public class ProductController {
	
	
		@Autowired
		private ProductDAO productDAO1;
		@Autowired(required = true)
		private CategoryDAO categoryDAO1;

		@Autowired(required = true)
		private SupplierDAO supplierDAO1;
		
		
		
	    @RequestMapping(value = "/productlist", method = RequestMethod.GET)
	    public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO1.list());
		model.addAttribute("categoryList", this.categoryDAO1.list());
		model.addAttribute("supplierList", this.supplierDAO1.list());
		return "productlist";
	}


	 @RequestMapping(value="/productlist/add", method = RequestMethod.POST)
      public String addProduct(@ModelAttribute("product") Product product){
	  
	 Category category = categoryDAO1.getByName(product.getCategory().getName());
	

		Supplier supplier = supplierDAO1.getByName(product.getSupplier().getName());
	
		
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		System.out.println("in category");
		product.setSupplier_id(supplier.getId());
		System.out.println("in sategory");
		productDAO1.saveOrUpdate(product);
	 
	  return "redirect:/productlist";

	}
	 
	 @RequestMapping("/cat")
	 public String goToProductList(HttpServletRequest req,Model model)
	 {
		 
		 String category=req.getParameter("cate");
		 
		int catid= productDAO1.getCateId(category);
		
		List<Product> prod=productDAO1.getProd(catid);
		Gson gson=new Gson();
		String products=gson.toJson(prod);
		model.addAttribute("products",products);
	
		 return "productinformation";
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
	    model.addAttribute("categoryList", this.categoryDAO1.list());
		model.addAttribute("supplierList", this.supplierDAO1.list());
	    return "productlist";


	}
	
	@RequestMapping("/productinfo")
    public String get1(HttpServletRequest req,Model model){
		String name=req.getParameter("name");
		Product p=productDAO1.getbyName(name);
		Gson gson=new Gson();
		String produ=gson.toJson(p);
		model.addAttribute("product",produ);
		System.out.println(produ);
		String path="C:\\Users\\NANDHINI SELVARAJAN\\Desktop\\jewellcart\\src\\main\\webapp\\WEB-INF\\resource\\image\\";
		path=path+p.getName()+".jpg";
		System.out.println(path);
		model.addAttribute("img",path);
		return "productinfo";
        }

	
	
}
			
			
	