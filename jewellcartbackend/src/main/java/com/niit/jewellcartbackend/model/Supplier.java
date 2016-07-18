package com.niit.jewellcartbackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="SUPPLIER")
@Component
public class Supplier {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name="id")
private int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
private String name;
private String address;



public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}


public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}


}