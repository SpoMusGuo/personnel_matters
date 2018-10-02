package com.pm.model;
/**
 * 计件工序
 * @author 2ht
 *
 */
public class PriceworkProcess {
	private String pricework_process_id;//工序编号
	private String pricework_process_name;//工序名称
	private String pricework_process_price;//工序单价
	public String getPricework_process_id() {
		return pricework_process_id;
	}
	public void setPricework_process_id(String pricework_process_id) {
		this.pricework_process_id = pricework_process_id;
	}
	public String getPricework_process_name() {
		return pricework_process_name;
	}
	public void setPricework_process_name(String pricework_process_name) {
		this.pricework_process_name = pricework_process_name;
	}
	public String getPricework_process_price() {
		return pricework_process_price;
	}
	public void setPricework_process_price(String pricework_process_price) {
		this.pricework_process_price = pricework_process_price;
	}

}
