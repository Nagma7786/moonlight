package com.tka.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "customer")
public class Customer {
	@Id
	int id;
	String name;
	Date date;
	 String number;
	String service;
	double total;
	double gvnbill;
	double rmnBill;
	
	
	public Customer()
	{
		
	}

	public Customer(int id, String name, Date date, String number, String service, double total, double gvnbill,
			double rmnBill) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.number = number;
		this.service = service;
		this.total = total;
		this.gvnbill = gvnbill;
		this.rmnBill = rmnBill;
	}

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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getService() {
		return service;
	}

	public void setService(String sevice) {
		this.service = sevice;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getGvnbill() {
		return gvnbill;
	}

	public void setGvnbill(double gvnbill) {
		this.gvnbill = gvnbill;
	}

	public double getRmnBill() {
		return rmnBill;
	}

	public void setRmnBill(double rmnBill) {
		this.rmnBill = rmnBill;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", date=" + date + ", number=" + number + ", service=" + service
				+ ", total=" + total + ", gvnbill=" + gvnbill + ", rmnBill=" + rmnBill + "]";
	}
	
	
	
	

	
	

}
