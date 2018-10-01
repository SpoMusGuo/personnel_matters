package com.pm.model;

import java.util.Date;

public class borrow {
	/**
	 * borrow: 物品领用表
	 * emp_id			员工编号(外键)(员工姓名	员工编号	所属部门	职务	职称	工种	等级	身份证号)
	 * good_id			物品编号(外键)(物品编号	物品名称	物品类型	单价	)
	 * borrow_count		领用数量
	 * borrow_date		领用日期
	 * borrow_notes		备注信息
	 */
	//private int emp_id;
	//private String good_id;
	private Emp emp;
	private Good good;
	private int borrow_count;
	private Date borrow_date;
	private String borrow_notes;
	public Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
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
