package com.pm.model;

import java.util.Date;
/**
 * 到期合同查询
 * emp_id			员工编号
 * emp_name			员工姓名
 * emp_department	员工部门
 * agreementno		合同编号
 * aname			合同名字
 * atype			合同类型
 * endtime			到期时间
 * @author Administrator
 *
 */

public class ContractQuery {
	private int emp_id;
	private String emp_name;
	private String emp_department;
	private String agreementno;
	private String aname;
	private String atype;
	private Date endtime;
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_department() {
		return emp_department;
	}
	public void setEmp_department(String emp_department) {
		this.emp_department = emp_department;
	}
	public String getAgreementno() {
		return agreementno;
	}
	public void setAgreementno(String agreementno) {
		this.agreementno = agreementno;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	@Override
	public String toString() {
		return "ContractQuery [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_department=" + emp_department
				+ ", agreementno=" + agreementno + ", aname=" + aname + ", atype=" + atype + ", endtime=" + endtime
				+ "]";
	}
	
}
