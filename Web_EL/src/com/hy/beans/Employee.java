package com.hy.beans;

public class Employee {
	private Integer id;
	private String lastName;
	private Department dept;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(Integer id, String lastName, Department dept) {
		super();
		this.id = id;
		this.lastName = lastName;
		this.dept = dept;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", lastName=" + lastName + ", dept=" + dept + "]";
	}
	
	//获取绿了他的名字
	public String getOutName() {
		return "情书女主角";
	}
	

}
