package com.pm.model;

import java.math.BigDecimal;
import java.sql.Date;
/**
 * 计件工资
 * @author 2ht
 *
 */
public class PriceworkWages {
	private int emp_id;//员工编号
	private String pricework_product_id;//产品编号
	private String pricework_process_id;//工序编号
	private int pricework_process_count;//数量
	private BigDecimal pricework_process_price;//金额
	private Date pricework_process_date;//录入时间
	private String pricework_process_info;//备注
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getPricework_product_id() {
		return pricework_product_id;
	}
	public void setPricework_product_id(String pricework_product_id) {
		this.pricework_product_id = pricework_product_id;
	}
	public String getPricework_process_id() {
		return pricework_process_id;
	}
	public void setPricework_process_id(String pricework_process_id) {
		this.pricework_process_id = pricework_process_id;
	}
	public int getPricework_process_count() {
		return pricework_process_count;
	}
	public void setPricework_process_count(int pricework_process_count) {
		this.pricework_process_count = pricework_process_count;
	}
	public BigDecimal getPricework_process_price() {
		return pricework_process_price;
	}
	public void setPricework_process_price(BigDecimal pricework_process_price) {
		this.pricework_process_price = pricework_process_price;
	}
	public Date getPricework_process_date() {
		return pricework_process_date;
	}
	public void setPricework_process_date(Date pricework_process_date) {
		this.pricework_process_date = pricework_process_date;
	}
	public String getPricework_process_info() {
		return pricework_process_info;
	}
	public void setPricework_process_info(String pricework_process_info) {
		this.pricework_process_info = pricework_process_info;
	}

}
