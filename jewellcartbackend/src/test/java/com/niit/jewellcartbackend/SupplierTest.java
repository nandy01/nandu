package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.SupplierDAO;
import com.niit.jewellcartbackend.model.Supplier;

public class SupplierTest {
	

	@SuppressWarnings("unchecked")
	public static void main(String[] args) {

		AnnotationConfigApplicationContext	context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDao");
		Supplier sup=new Supplier();

		sup.setId("CAT3");
		sup.setName("DiamondBangle");
		
		supplierDAO.saveOrUpdate(sup);
		
		
		supplierDAO.delete("a");
		
		List<Supplier> li = new ArrayList<Supplier>();
		li = supplierDAO.list();
		for (Supplier s : li) {
			System.out.println(s.getId() + ":" + s.getName()+":"+s.getAddress()+":"+s.getAddress());


}
}
}
