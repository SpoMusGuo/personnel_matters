package com.pm.model;

import java.util.Date;

/**
 * emp_name			员工姓名
 * emp_id			员工编号
 * emp_department				所属部门
 * emp_job				职务
 * emp_academic_title	职称
 * emp_work_category				工种
 * emp_grade			等级
 * emp_idnumber			身份证号
 * agreementno		合同编号
 * aname			合同名称
 * atype			合同类型
 * regular			是否转正
 * signdata			签约时间
 * probation_period	试用期限
 * probation_begindata	试用生效时间
 * probation_sal		试用工资
 * probation_overdata	试用到期时间
 * agreementperiod				合同期限
 * starttime			合同生效时间
 * regularsal			转正工资
 * endtime			到期时间
 * documents				合同文件
 * notes				合同备注
 * @author 红莲天舞
 *
 */
public class Agreements {
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
	private Date signdata;
	private Double probation_period;
	private Date probation_begindata;
	private Double probation_sal;
	private Date probation_overdata;
	private String agreementperiod;
	private Date starttime;
	private Double regularsal;
	private Date endtime;
	private String documents;
	private String notes;
	/**
	 * @return the emp_name
	 */
	public String getEmp_name() {
		return emp_name;
	}
	/**
	 * @param emp_name the emp_name to set
	 */
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	/**
	 * @return the emp_id
	 */
	public String getEmp_id() {
		return emp_id;
	}
	/**
	 * @param emp_id the emp_id to set
	 */
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	/**
	 * @return the emp_department
	 */
	public String getEmp_department() {
		return emp_department;
	}
	/**
	 * @param emp_department the emp_department to set
	 */
	public void setEmp_department(String emp_department) {
		this.emp_department = emp_department;
	}
	/**
	 * @return the emp_job
	 */
	public String getEmp_job() {
		return emp_job;
	}
	/**
	 * @param emp_job the emp_job to set
	 */
	public void setEmp_job(String emp_job) {
		this.emp_job = emp_job;
	}
	/**
	 * @return the emp_academic_title
	 */
	public String getEmp_academic_title() {
		return emp_academic_title;
	}
	/**
	 * @param emp_academic_title the emp_academic_title to set
	 */
	public void setEmp_academic_title(String emp_academic_title) {
		this.emp_academic_title = emp_academic_title;
	}
	/**
	 * @return the emp_work_category
	 */
	public String getEmp_work_category() {
		return emp_work_category;
	}
	/**
	 * @param emp_work_category the emp_work_category to set
	 */
	public void setEmp_work_category(String emp_work_category) {
		this.emp_work_category = emp_work_category;
	}
	/**
	 * @return the emp_grade
	 */
	public String getEmp_grade() {
		return emp_grade;
	}
	/**
	 * @param emp_grade the emp_grade to set
	 */
	public void setEmp_grade(String emp_grade) {
		this.emp_grade = emp_grade;
	}
	/**
	 * @return the emp_idnumber
	 */
	public String getEmp_idnumber() {
		return emp_idnumber;
	}
	/**
	 * @param emp_idnumber the emp_idnumber to set
	 */
	public void setEmp_idnumber(String emp_idnumber) {
		this.emp_idnumber = emp_idnumber;
	}
	/**
	 * @return the agreementno
	 */
	public String getAgreementno() {
		return agreementno;
	}
	/**
	 * @param agreementno the agreementno to set
	 */
	public void setAgreementno(String agreementno) {
		this.agreementno = agreementno;
	}
	/**
	 * @return the aname
	 */
	public String getAname() {
		return aname;
	}
	/**
	 * @param aname the aname to set
	 */
	public void setAname(String aname) {
		this.aname = aname;
	}
	/**
	 * @return the atype
	 */
	public String getAtype() {
		return atype;
	}
	/**
	 * @param atype the atype to set
	 */
	public void setAtype(String atype) {
		this.atype = atype;
	}
	/**
	 * @return the regular
	 */
	public String getRegular() {
		return regular;
	}
	/**
	 * @param regular the regular to set
	 */
	public void setRegular(String regular) {
		this.regular = regular;
	}
	/**
	 * @return the signdata
	 */
	public Date getSigndata() {
		return signdata;
	}
	/**
	 * @param signdata the signdata to set
	 */
	public void setSigndata(Date signdata) {
		this.signdata = signdata;
	}
	/**
	 * @return the probation_period
	 */
	public Double getProbation_period() {
		return probation_period;
	}
	/**
	 * @param probation_period the probation_period to set
	 */
	public void setProbation_period(Double probation_period) {
		this.probation_period = probation_period;
	}
	/**
	 * @return the probation_begindata
	 */
	public Date getProbation_begindata() {
		return probation_begindata;
	}
	/**
	 * @param probation_begindata the probation_begindata to set
	 */
	public void setProbation_begindata(Date probation_begindata) {
		this.probation_begindata = probation_begindata;
	}
	/**
	 * @return the probation_sal
	 */
	public Double getProbation_sal() {
		return probation_sal;
	}
	/**
	 * @param probation_sal the probation_sal to set
	 */
	public void setProbation_sal(Double probation_sal) {
		this.probation_sal = probation_sal;
	}
	/**
	 * @return the probation_overdata
	 */
	public Date getProbation_overdata() {
		return probation_overdata;
	}
	/**
	 * @param probation_overdata the probation_overdata to set
	 */
	public void setProbation_overdata(Date probation_overdata) {
		this.probation_overdata = probation_overdata;
	}
	/**
	 * @return the agreementperiod
	 */
	public String getAgreementperiod() {
		return agreementperiod;
	}
	/**
	 * @param agreementperiod the agreementperiod to set
	 */
	public void setAgreementperiod(String agreementperiod) {
		this.agreementperiod = agreementperiod;
	}
	/**
	 * @return the starttime
	 */
	public Date getStarttime() {
		return starttime;
	}
	/**
	 * @param starttime the starttime to set
	 */
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	/**
	 * @return the regularsal
	 */
	public Double getRegularsal() {
		return regularsal;
	}
	/**
	 * @param regularsal the regularsal to set
	 */
	public void setRegularsal(Double regularsal) {
		this.regularsal = regularsal;
	}
	/**
	 * @return the endtime
	 */
	public Date getEndtime() {
		return endtime;
	}
	/**
	 * @param endtime the endtime to set
	 */
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	/**
	 * @return the documents
	 */
	public String getDocuments() {
		return documents;
	}
	/**
	 * @param documents the documents to set
	 */
	public void setDocuments(String documents) {
		this.documents = documents;
	}
	/**
	 * @return the notes
	 */
	public String getNotes() {
		return notes;
	}
	/**
	 * @param notes the notes to set
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
}
