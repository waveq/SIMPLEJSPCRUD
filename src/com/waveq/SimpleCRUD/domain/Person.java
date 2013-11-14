package com.waveq.SimpleCRUD.domain;

public class Person {
	private int id;
	private String name;
	private String lastName;
	private String sex;
	private int yob;
	
	public Person() {
		super();
	}
	public Person(int id, String name, String lastName, String sex, int yob) {
		super();
		this.id = id;
		this.name = name;
		this.lastName = lastName;
		this.sex = sex;
		this.yob = yob;
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
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getYob() {
		return yob;
	}
	public void setYob(int yob) {
		this.yob = yob;
	}
	
	

}
