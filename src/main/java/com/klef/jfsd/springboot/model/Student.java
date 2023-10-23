package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "stud_table")
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="stud_id")
	private int id;
	@Column(name="stud_name",nullable=false,length = 50)
	private String name;
	@Column(name="stud_faname",nullable=false,length = 50)
	private String faname;
	
	@Column(name="stud_department",nullable=false,length = 20)
	private String department;
	
	@Column(name="stud_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="stud_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="stud_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="stud_address",nullable=false)
	private String address;
	@Column(name="stud_pin",nullable=false,unique = true)
	private String pin;
	@Column(name="stud_contact",nullable=false,unique = true)
	private String contact;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(name="stud_city",nullable=false,length = 20)
	private String city;
	@Column(name="emp_active",nullable=false)
	private boolean active; // true or false
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getContact() {
		return contact;
	}
	public String getFaname() {
		return faname;
	}
	public void setFaname(String faname) {
		this.faname = faname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", faname=" + faname+", gender=" + gender + ", dateofbirth=" + dateofbirth
				+ ", department=" + department +  ", email=" + email + 
				 ", address=" + address + ", contact=" + contact +", city=" + city +", pin=" + pin + ", active=" + active + "]";
	}
}
