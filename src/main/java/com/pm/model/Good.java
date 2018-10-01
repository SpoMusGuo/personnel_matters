package com.pm.model;

import java.util.Date;

public class Good {
	/**
	 * good_id				物品编号
	 * good_name			物品名称
	 * good_type			物品类型
	 * good_price			单价
	 * good_count			数量
	 * good_sum_price		金额
	 * good_repetory		计算库存
	 * good_register_date	登记时间
	 * good_notes			备注
	 */
	private String good_id;
	private String good_name;
	private String good_type;
	private double good_price;
	private int good_count;
	private double good_sum_price;
	private int good_repetory;
	private Date good_register_date;
	private String good_notes;
	public String getGood_id() {
		return good_id;
	}
	public void setGood_id(String good_id) {
		this.good_id = good_id;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public String getGood_type() {
		return good_type;
	}
	public void setGood_type(String good_type) {
		this.good_type = good_type;
	}
	public double getGood_price() {
		return good_price;
	}
	public void setGood_price(double good_price) {
		this.good_price = good_price;
	}
	public int getGood_count() {
		return good_count;
	}
	public void setGood_count(int good_count) {
		this.good_count = good_count;
	}
	public double getGood_sum_price() {
		return good_sum_price;
	}
	public void setGood_sum_price(double good_sum_price) {
		this.good_sum_price = good_sum_price;
	}
	public int getGood_repetory() {
		return good_repetory;
	}
	public void setGood_repetory(int good_repetory) {
		this.good_repetory = good_repetory;
	}
	public Date getGood_register_date() {
		return good_register_date;
	}
	public void setGood_register_date(Date good_register_date) {
		this.good_register_date = good_register_date;
	}
	public String getGood_notes() {
		return good_notes;
	}
	public void setGood_notes(String good_notes) {
		this.good_notes = good_notes;
	}
	@Override
	public String toString() {
		return "Good [good_id=" + good_id + ", good_name=" + good_name + ", good_type=" + good_type + ", good_price="
				+ good_price + ", good_count=" + good_count + ", good_sum_price=" + good_sum_price + ", good_repetory="
				+ good_repetory + ", good_register_date=" + good_register_date + ", good_notes=" + good_notes + "]";
	}
	
}
