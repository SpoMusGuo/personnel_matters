package com.pm.model;

import java.util.Date;
import java.math.BigDecimal;
/**
 * emp_name				员工姓名
 * emp_id				员工编号
 * emp_department		所属部门
 * emp_job				职务
 * emp_academic_title	职称
 * emp_work_category	工种
 * emp_grade			等级
 * emp_idnumber			身份证号
 * agreementno			合同编号
 * aname				合同名称
 * atype				合同类型
 * regular				是否转正
 * signdata				签约时间
 * probation_period		试用期限
 * probation_begindata	试用生效时间
 * probation_sal		试用工资
 * probation_overdata	试用到期时间
 * agreementperiod		合同期限
 * starttime			合同生效时间
 * regularsal			转正工资
 * endtime				到期时间
 * documents			合同文件
 * notes				合同备注
 * status				锁状态
 * @author 红莲天舞
 *
 */
public class Agreements2 {
	private String emp_name;
	private String emp_id;
	private String emp_department;
	private String emp_job;
	private String emp_academic_title;
	private String emp_work_category ;
	private String emp_grade;
	private String emp_idnumber;
	private String agreementno;
	private String aname;
	private String atype;
	private String regular;
	private String signdata = null;
	private String probation_period;
	private String probation_begindata = null;
	private BigDecimal probation_sal;
	private String probation_overdata = null;
	private String agreementperiod;
	private String starttime = null;
	private BigDecimal regularsal;
	private String endtime = null;
	private String documents;
	private String notes;
	private String status;

	/**
	 * @return emp_name
	 */
	public String getEmp_name() {
		return emp_name;
	}



	/**
	 * @param emp_name 要设置的 emp_name
	 */
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}



	/**
	 * @return emp_id
	 */
	public String getEmp_id() {
		return emp_id;
	}



	/**
	 * @param emp_id 要设置的 emp_id
	 */
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}



	/**
	 * @return emp_department
	 */
	public String getEmp_department() {
		return emp_department;
	}



	/**
	 * @param emp_department 要设置的 emp_department
	 */
	public void setEmp_department(String emp_department) {
		this.emp_department = emp_department;
	}



	/**
	 * @return emp_job
	 */
	public String getEmp_job() {
		return emp_job;
	}



	/**
	 * @param emp_job 要设置的 emp_job
	 */
	public void setEmp_job(String emp_job) {
		this.emp_job = emp_job;
	}



	/**
	 * @return emp_academic_title
	 */
	public String getEmp_academic_title() {
		return emp_academic_title;
	}



	/**
	 * @param emp_academic_title 要设置的 emp_academic_title
	 */
	public void setEmp_academic_title(String emp_academic_title) {
		this.emp_academic_title = emp_academic_title;
	}



	/**
	 * @return emp_work_category
	 */
	public String getEmp_work_category() {
		return emp_work_category;
	}



	/**
	 * @param emp_work_category 要设置的 emp_work_category
	 */
	public void setEmp_work_category(String emp_work_category) {
		this.emp_work_category = emp_work_category;
	}



	/**
	 * @return emp_grade
	 */
	public String getEmp_grade() {
		return emp_grade;
	}



	/**
	 * @param emp_grade 要设置的 emp_grade
	 */
	public void setEmp_grade(String emp_grade) {
		this.emp_grade = emp_grade;
	}



	/**
	 * @return emp_idnumber
	 */
	public String getEmp_idnumber() {
		return emp_idnumber;
	}



	/**
	 * @param emp_idnumber 要设置的 emp_idnumber
	 */
	public void setEmp_idnumber(String emp_idnumber) {
		this.emp_idnumber = emp_idnumber;
	}



	/**
	 * @return agreementno
	 */
	public String getAgreementno() {
		return agreementno;
	}



	/**
	 * @param agreementno 要设置的 agreementno
	 */
	public void setAgreementno(String agreementno) {
		this.agreementno = agreementno;
	}



	/**
	 * @return aname
	 */
	public String getAname() {
		return aname;
	}



	/**
	 * @param aname 要设置的 aname
	 */
	public void setAname(String aname) {
		this.aname = aname;
	}



	/**
	 * @return atype
	 */
	public String getAtype() {
		return atype;
	}



	/**
	 * @param atype 要设置的 atype
	 */
	public void setAtype(String atype) {
		this.atype = atype;
	}



	/**
	 * @return regular
	 */
	public String getRegular() {
		return regular;
	}



	/**
	 * @param regular 要设置的 regular
	 */
	public void setRegular(String regular) {
		this.regular = regular;
	}



	/**
	 * @return signdata
	 */
	public String getSigndata() {
		return signdata;
	}



	/**
	 * @param signdata 要设置的 signdata
	 */
	public void setSigndata(String signdata) {
		this.signdata = signdata;
	}



	/**
	 * @return probation_period
	 */
	public String getProbation_period() {
		return probation_period;
	}



	/**
	 * @param probation_period 要设置的 probation_period
	 */
	public void setProbation_period(String probation_period) {
		this.probation_period = probation_period;
	}



	/**
	 * @return probation_begindata
	 */
	public String getProbation_begindata() {
		return probation_begindata;
	}



	/**
	 * @param probation_begindata 要设置的 probation_begindata
	 */
	public void setProbation_begindata(String probation_begindata) {
		this.probation_begindata = probation_begindata;
	}



	/**
	 * @return probation_sal
	 */
	public BigDecimal getProbation_sal() {
		return probation_sal;
	}



	/**
	 * @param probation_sal 要设置的 probation_sal
	 */
	public void setProbation_sal(BigDecimal probation_sal) {
		this.probation_sal = probation_sal;
	}



	/**
	 * @return probation_overdata
	 */
	public String getProbation_overdata() {
		return probation_overdata;
	}



	/**
	 * @param probation_overdata 要设置的 probation_overdata
	 */
	public void setProbation_overdata(String probation_overdata) {
		this.probation_overdata = probation_overdata;
	}



	/**
	 * @return agreementperiod
	 */
	public String getAgreementperiod() {
		return agreementperiod;
	}



	/**
	 * @param agreementperiod 要设置的 agreementperiod
	 */
	public void setAgreementperiod(String agreementperiod) {
		this.agreementperiod = agreementperiod;
	}



	/**
	 * @return starttime
	 */
	public String getStarttime() {
		return starttime;
	}



	/**
	 * @param starttime 要设置的 starttime
	 */
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}



	/**
	 * @return regularsal
	 */
	public BigDecimal getRegularsal() {
		return regularsal;
	}



	/**
	 * @param regularsal 要设置的 regularsal
	 */
	public void setRegularsal(BigDecimal regularsal) {
		this.regularsal = regularsal;
	}



	/**
	 * @return endtime
	 */
	public String getEndtime() {
		return endtime;
	}



	/**
	 * @param endtime 要设置的 endtime
	 */
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}



	/**
	 * @return documents
	 */
	public String getDocuments() {
		return documents;
	}



	/**
	 * @param documents 要设置的 documents
	 */
	public void setDocuments(String documents) {
		this.documents = documents;
	}



	/**
	 * @return notes
	 */
	public String getNotes() {
		return notes;
	}



	/**
	 * @param notes 要设置的 notes
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}



	/**
	 * @return status
	 */
	public String getStatus() {
		return status;
	}



	/**
	 * @param status 要设置的 status
	 */
	public void setStatus(String status) {
		this.status = status;
	}



	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Agreements [emp_name=" + emp_name + ", emp_id=" + emp_id + ", emp_department=" + emp_department
				+ ", emp_job=" + emp_job + ", emp_academic_title=" + emp_academic_title + ", emp_work_category="
				+ emp_work_category + ", emp_grade=" + emp_grade + ", emp_idnumber=" + emp_idnumber + ", agreementno="
				+ agreementno + ", aname=" + aname + ", atype=" + atype + ", regular=" + regular + ", signdata="
				+ signdata + ", probation_period=" + probation_period + ", probation_begindata=" + probation_begindata
				+ ", probation_sal=" + probation_sal + ", probation_overdata=" + probation_overdata
				+ ", agreementperiod=" + agreementperiod + ", starttime=" + starttime + ", regularsal=" + regularsal
				+ ", endtime=" + endtime + ", documents=" + documents + ", notes=" + notes + ", status=" + status + "]";
	}
}
