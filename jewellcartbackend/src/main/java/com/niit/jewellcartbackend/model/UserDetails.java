package com.niit.jewellcartbackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table(name="USER")
@Component
public class UserDetails {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	 @NotNull
	 @Size(min = 6, max = 15)
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

	private String username;
	@NotNull(message = "Please enter your email addresss.")
    @Size(min = 6, max = 15, message = "please enter your email")
    private String email;
    @NotNull(message = "Please enter your password.")
    @Size(min = 6, max = 15)
	private String password;
    @NotNull(message = "Please enter your mobile.")
    @Size( max = 10)
	private String mobile;
    @NotNull(message = "Please enter your addresss.")
	private String address;
    
    private boolean isAdmin;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
	
	
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	

	
}
