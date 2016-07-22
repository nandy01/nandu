package com.niit.jewellcartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellcartbackend.dao.ProductDAO;
import com.niit.jewellcartbackend.model.Product;

public class ProductTest {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {

		AnnotationConfigApplicationContext	context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.jewellcartbackend.config");
		context.refresh();
		ProductDAO productDAO = (ProductDAO) context.getBean("productDao");
		Product pro=new Product();

		//pro.setId("Pro3");
		pro.setName("DiamondBangle");
		pro.setDescription("This is Bangle");
		pro.setCategory_id(2);
		pro.setPrice(150);
		pro.setSupplier_id(2);
		
		productDAO.saveOrUpdate(pro);
		
		
		//productDAO.delete("pro1");
		
		List<Product> li = new ArrayList<Product>();
		li = productDAO.list();
		for (Product p : li) {
			System.out.println(p.getId() + ":" + p.getName()+":"+p.getDescription()+":"+p.getPrice());


}
}

}
