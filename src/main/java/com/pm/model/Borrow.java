package com.pm.model;

import java.util.Date;

public class Borrow {
	/**
	 * borrow: 物品领用表
	 * emp_id			员工编号(外键)(员工姓名	员工编号	所属部门	职务	职称	工种	等级	身份证号)
	 * good_id			物品编号(外键)(物品编号	物品名称	物品类型	单价	)
	 * borrow_count		领用数量
	 * borrow_date		领用日期
	 * borrow_notes		备注信息
	 */
	private int emp_id;
	private String good_id;
	private int borrow_count;
	private Date borrow_date;
	private String borrow_notes;
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getGood_id() {
		return good_id;
	}
	public void setGood_id(String good_id) {
		this.good_id = good_id;
	}
	public int getBorrow_count() {
		return borrow_count;
	}
	public void setBorrow_count(int borrow_count) {
		this.borrow_count = borrow_count;
	}
	public Date getBorrow_date() {
		return borrow_date;
	}
	public void setBorrow_date(Date borrow_date) {
		this.borrow_date = borrow_date;
	}
	public String getBorrow_notes() {
		return borrow_notes;
	}
	public void setBorrow_notes(String borrow_notes) {
		this.borrow_notes = borrow_notes;
	}
	
}
