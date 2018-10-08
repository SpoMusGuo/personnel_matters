package com.pm.model;

/**
 * 员工信息组合查询
 * emp_id				员工编号
 * emp_name				员工姓名
 * emp_sex				员工性别
 * emp_department		员工部门
 * emp_academic_title	员工职务
 * emp_job				员工职称
 * emp_mobilephone		员工手机
 * emp_age				员工年龄
 */
public class CombinationQuery {
	
	private int emp_id;
	private String emp_name;
	private String emp_sex;
	private String emp_department;
	private String emp_academic_title;
	private String emp_job;
	private String emp_mobilephone;
	private String emp_age;
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_sex() {
		return emp_sex;
	}
	public void setEmp_sex(String emp_sex) {
		this.emp_sex = emp_sex;
	}
	public String getEmp_department() {
		return emp_department;
	}
	public void setEmp_department(String emp_department) {
		this.emp_department = emp_department;
	}
	public String getEmp_academic_title() {
		return emp_academic_title;
	}
	public void setEmp_academic_title(String emp_academic_title) {
		this.emp_academic_title = emp_academic_title;
	}
	public String getEmp_job() {
		return emp_job;
	}
	public void setEmp_job(String emp_job) {
		this.emp_job = emp_job;
	}
	public String getEmp_mobilephone() {
		return emp_mobilephone;
	}
	public void setEmp_mobilephone(String emp_mobilephone) {
		this.emp_mobilephone = emp_mobilephone;
	}
	public String getEmp_age() {
		return emp_age;
	}
	public void setEmp_age(String emp_age) {
		this.emp_age = emp_age;
	}
	@Override
	public String toString() {
		return "CombinationQuery [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_sex=" + emp_sex
				+ ", emp_department=" + emp_department + ", emp_academic_title=" + emp_academic_title + ", emp_job="
				+ emp_job + ", emp_mobilephone=" + emp_mobilephone + ", emp_age=" + emp_age + "]";
	}
	
}
