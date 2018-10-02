package com.pm.model;

import java.math.BigDecimal;
import java.sql.Date;
/**
 * 提成工资
 * @author 2ht
 *
 */
public class ExtractWages {
	private int emp_id;//员工编号
	private String extract_id;//项目编号
	private BigDecimal business_money;//业务金额
	private BigDecimal pushmoney;//提成金额
	private Date entry_date;//录入日期
	private String notes;//备注
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getExtract_id() {
		return extract_id;
	}
	public void setExtract_id(String extract_id) {
		this.extract_id = extract_id;
	}
	public BigDecimal getBusiness_money() {
		return business_money;
	}
	public void setBusiness_money(BigDecimal business_money) {
		this.business_money = business_money;
	}
	public BigDecimal getPushmoney() {
		return pushmoney;
	}
	public void setPushmoney(BigDecimal pushmoney) {
		this.pushmoney = pushmoney;
	}
	public Date getEntry_date() {
		return entry_date;
	}
	public void setEntry_date(Date entry_date) {
		this.entry_date = entry_date;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}

}
