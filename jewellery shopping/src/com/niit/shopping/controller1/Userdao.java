package com.niit.shopping.controller1;

public class Userdao {

	public boolean isvalidcredentials(String UserID,String Password)
	{
		if(UserID.equals("nandhini")&& Password.equals("abc"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
	
	



