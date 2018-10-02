package com.pm.model;

import java.math.BigDecimal;
/**
 * 个人所得税等级
 * @author 2ht
 *
 */
public class TaxGrade {
	@Override
	public String toString() {
		return "TaxGrade [taxgrade_grade=" + taxgrade_grade + ", taxgrade_start=" + taxgrade_start + ", taxgrade_end="
				+ taxgrade_end + ", taxgrade_rate=" + taxgrade_rate + ", taxgrade_speed=" + taxgrade_speed + "]";
	}
	private int taxgrade_grade;//税等级
	private BigDecimal taxgrade_start;//起始金额
	private BigDecimal taxgrade_end;//结束金额
	private BigDecimal taxgrade_rate;//税率
	private BigDecimal taxgrade_speed;//速扣	
	public int getTaxgrade_grade() {
		return taxgrade_grade;
	}
	public void setTaxgrade_grade(int taxgrade_grade) {
		this.taxgrade_grade = taxgrade_grade;
	}
	public BigDecimal getTaxgrade_start() {
		return taxgrade_start;
	}
	public void setTaxgrade_start(BigDecimal taxgrade_start) {
		this.taxgrade_start = taxgrade_start;
	}
	public BigDecimal getTaxgrade_end() {
		return taxgrade_end;
	}
	public void setTaxgrade_end(BigDecimal taxgrade_end) {
		this.taxgrade_end = taxgrade_end;
	}
	public BigDecimal getTaxgrade_rate() {
		return taxgrade_rate;
	}
	public void setTaxgrade_rate(BigDecimal taxgrade_rate) {
		this.taxgrade_rate = taxgrade_rate;
	}
	public BigDecimal getTaxgrade_speed() {
		return taxgrade_speed;
	}
	public void setTaxgrade_speed(BigDecimal taxgrade_speed) {
		this.taxgrade_speed = taxgrade_speed;
	}

}
