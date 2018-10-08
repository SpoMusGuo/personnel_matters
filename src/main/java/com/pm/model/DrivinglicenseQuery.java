package com.pm.model;

import java.util.Date;
/**驾驶证查询
 * emp_id  				员工编号
 * emp_name 			员工姓名
 * emp_department		员工部门
 * certificate_deadline	驾驶证到期时间
 * @author Administrator
 *
 */
public class DrivinglicenseQuery {
	private int emp_id;
	private String emp_name;
	private String emp_department;
	private Date certificate_deadline;
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
	public Date getCertificate_deadline() {
		return certificate_deadline;
	}
	public void setCertificate_deadline(Date certificate_deadline) {
		this.certificate_deadline = certificate_deadline;
	}
	@Override
	public String toString() {
		return "DrivinglicenseQuery [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_department=" + emp_department
				+ ", certificate_deadline=" + certificate_deadline + "]";
	}
	
	
}
