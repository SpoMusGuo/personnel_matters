package com.pm.model;
/**
 * 人员离职表
 * @author 黄奕文
 *
 */

import java.util.Date;

public class Turnover {
	private int turnover_id;
	private int emp_id;
	private String turnover_type;
	private Date turnover_time;
	private String turnover_notes;
	public int getTurnover_id() {
		return turnover_id;
	}
	public void setTurnover_id(int turnover_id) {
		this.turnover_id = turnover_id;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getTurnover_type() {
		return turnover_type;
	}
	public void setTurnover_type(String turnover_type) {
		this.turnover_type = turnover_type;
	}
	public Date getTurnover_time() {
		return turnover_time;
	}
	public void setTurnover_time(Date turnover_time) {
		this.turnover_time = turnover_time;
	}
	public String getTurnover_notes() {
		return turnover_notes;
	}
	public void setTurnover_notes(String turnover_notes) {
		this.turnover_notes = turnover_notes;
	}
	
}
