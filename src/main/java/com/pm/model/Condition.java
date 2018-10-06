package com.pm.model;

public class Condition {

	private String fieldName;
	private String parameter1;
	private String parameter2;
	private String symbol;
	
	
	public String getFieldName() {
		return fieldName;
	}
	@Override
	public String toString() {
		return "Condition [fieldName=" + fieldName + ", parameter1=" + parameter1 + ", parameter2=" + parameter2
				+ ", symbol=" + symbol + "]";
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public String getParameter1() {
		return parameter1;
	}
	public void setParameter1(String parameter1) {
		this.parameter1 = parameter1;
	}
	public String getParameter2() {
		return parameter2;
	}
	public void setParameter2(String parameter2) {
		this.parameter2 = parameter2;
	}
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	
	
}
