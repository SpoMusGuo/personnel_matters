package com.pm.model;
/**
 * 员工调动表
 * 
 * @author 黄奕文
 *
 */

import java.util.Date;

public class Transfer {
	private int mobility_id;
	private int emp_id;
	private String emp_name;
	private String original_dept;
	private String original_post;
	private String new_dept;
	private String new_post;
	private Double new_sal;
	private String mobility_type;
	private Date mobility_time;
	private String notes;
	public int getMobility_id() {
		return mobility_id;
	}
	public void setMobility_id(int mobility_id) {
		this.mobility_id = mobility_id;
	}
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
	public String getOriginal_dept() {
		return original_dept;
	}
	public void setOriginal_dept(String original_dept) {
		this.original_dept = original_dept;
	}
	public String getOriginal_post() {
		return original_post;
	}
	public void setOriginal_post(String original_post) {
		this.original_post = original_post;
	}
	public String getNew_dept() {
		return new_dept;
	}
	public void setNew_dept(String new_dept) {
		this.new_dept = new_dept;
	}
	public String getNew_post() {
		return new_post;
	}
	public void setNew_post(String new_post) {
		this.new_post = new_post;
	}
	public Double getNew_sal() {
		return new_sal;
	}
	public void setNew_sal(Double new_sal) {
		this.new_sal = new_sal;
	}
	public String getMobility_type() {
		return mobility_type;
	}
	public void setMobility_type(String mobility_type) {
		this.mobility_type = mobility_type;
	}
	public Date getMobility_time() {
		return mobility_time;
	}
	public void setMobility_time(Date mobility_time) {
		this.mobility_time = mobility_time;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
	
	
}
