package com.niit.jewellcart.dao;

import org.springframework.stereotype.Repository;

@Repository
public class Userdao {

		public boolean isvaliduser(String name,String Password)
		{
			if(name.equals("a") && Password.equals("abc"))
			{
				return true;
				
			}
			else
			{
				return false;
			}
		}

}
