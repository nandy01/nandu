package com.niit.jewellcartbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Usertest {
static AnnotationConfigApplicationContext context;
	
public static void main(String[] args) {
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
	}
	
}
}
