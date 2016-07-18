package com.niit.jewellcartbackend.model;


	
	
	

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;

	import org.springframework.stereotype.Component;

	@Entity
	@Table(name = "user")
	@Component
	public class User {

		@Id
		@Column(name="name")
		private String name;
		private String password;
		
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public boolean isAdmin() {
			return isAdmin;
		}
		public void setAdmin(boolean isAdmin) {
			this.isAdmin = isAdmin;
		}
		@Column(name = "admin")
		private boolean isAdmin;

		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
	}



