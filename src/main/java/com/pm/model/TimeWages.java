package com.pm.model;

import java.math.BigDecimal;
import java.sql.Date;
/**
 * 计时工资
 * @author 2ht
 *
 */
public class TimeWages {
	private int emp_id;//员工编号
	private String time_procedure_id;//计时编号
	private int time_wages_count;//数量
	private BigDecimal time_wages_price;//金额
	private Date time_wages_date;//录入时间
	private String time_wages_info;//备注
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getTime_procedure_id() {
		return time_procedure_id;
	}
	public void setTime_procedure_id(String time_procedure_id) {
		this.time_procedure_id = time_procedure_id;
	}
	public int getTime_wages_count() {
		return time_wages_count;
	}
	public void setTime_wages_count(int time_wages_count) {
		this.time_wages_count = time_wages_count;
	}
	public BigDecimal getTime_wages_price() {
		return time_wages_price;
	}
	public void setTime_wages_price(BigDecimal time_wages_price) {
		this.time_wages_price = time_wages_price;
	}
	public Date getTime_wages_date() {
		return time_wages_date;
	}
	public void setTime_wages_date(Date time_wages_date) {
		this.time_wages_date = time_wages_date;
	}
	public String getTime_wages_info() {
		return time_wages_info;
	}
	public void setTime_wages_info(String time_wages_info) {
		this.time_wages_info = time_wages_info;
	}

}
