package com.pm.model;

import java.util.Date;

public class Receive {
	/**
	 * receive:物品归还表
	 * emp_id			员工编号(外键)(员工姓名	员工编号	所属部门	职务	职称	工种	等级	身份证号)
	 * good_id			物品编号(外键)(物品编号	物品名称	物品类型	单价	)
	 * receive_count	归还数量
	 * receive_date		归还日期
	 * receive_notes	备注信息
	 */
	private int emp_id;
	private String good_id;
	private int receive_count;
	private Date receive_date;
	private String receive_notes;
	
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
	public int getReceive_count() {
		return receive_count;
	}
	public void setReceive_count(int receive_count) {
		this.receive_count = receive_count;
	}
	public Date getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
	}
	public String getReceive_notes() {
		return receive_notes;
	}
	public void setReceive_notes(String receive_notes) {
		this.receive_notes = receive_notes;
	}
	
}
