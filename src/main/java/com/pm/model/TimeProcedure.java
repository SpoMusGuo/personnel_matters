package com.pm.model;

import java.math.BigDecimal;
/**
 * 计时工序
 * @author 2ht
 *
 */
public class TimeProcedure {
	private String time_procedure_id;//计时编号
	private String time_procedure_procedure;//计时工序
	private BigDecimal time_procedure_price;//计时单价
	private String time_procedure_company;//计时单位
	public String getTime_procedure_id() {
		return time_procedure_id;
	}
	public void setTime_procedure_id(String time_procedure_id) {
		this.time_procedure_id = time_procedure_id;
	}
	public String getTime_procedure_procedure() {
		return time_procedure_procedure;
	}
	public void setTime_procedure_procedure(String time_procedure_procedure) {
		this.time_procedure_procedure = time_procedure_procedure;
	}
	public BigDecimal getTime_procedure_price() {
		return time_procedure_price;
	}
	public void setTime_procedure_price(BigDecimal time_procedure_price) {
		this.time_procedure_price = time_procedure_price;
	}
	public String getTime_procedure_company() {
		return time_procedure_company;
	}
	public void setTime_procedure_company(String time_procedure_company) {
		this.time_procedure_company = time_procedure_company;
	}

}
