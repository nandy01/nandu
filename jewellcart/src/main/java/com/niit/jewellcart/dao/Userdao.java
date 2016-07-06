package com.niit.jewellcart.dao;

import org.springframework.stereotype.Repository;

@Repository
public class Userdao {

		public boolean isvaliduser(String name,String password)
		{
			if(name.equals("a") && password.equals("abc"))
			{
				return true;
				
			}
			else
			{
				return false;
			}
		}

}
