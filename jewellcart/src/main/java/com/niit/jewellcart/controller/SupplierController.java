package com.niit.jewellcart.controller;

import java.util.ArrayList;
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

import com.niit.jewellcartbackend.dao.SupplierDAO;
import com.niit.jewellcartbackend.model.Category;
import com.niit.jewellcartbackend.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO1;
	



@RequestMapping("/getsup")
public ModelAndView getAllSuppliers() {
	List<Supplier> suppliersList = supplierDAO1.list();
	ModelAndView mv = new ModelAndView("/supplierList");
	mv.addObject("supplierList", suppliersList);
	return mv;
}




@RequestMapping("supplierlist/remove/{id}")
public String removeSupplier(@PathVariable("id") String id){
	supplierDAO1.delete(id);
	return "redirect:/getsup";
	
	
}

@RequestMapping("supplierlist/edit/{id}")
public String editCategory(@PathVariable("id") String id, Model model){
	
    return "redirect:/Form2";

}
@RequestMapping("/addSupplier")
public String addSupplier(@ModelAttribute Supplier supplier) {
	System.out.println("welcome into addsupplier");
	supplierDAO1.saveOrUpdate(supplier);
	return "redirect:/getsup";
 }
@RequestMapping("/Form2")
public String gotoForm2()
{
	return "Form2";
}



		
	}


