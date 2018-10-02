package com.pm.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * startIndex		分页查询起始下标
 * pageCount		分页查询的最大条数
 * emp_name			存储该条件的值
 * semp_name		S+变量名，存储该条件的条件类型（=，!= , > ,>= ,小于, 小于等于, 介于, 形如, 非空, 为空）
 * emp_name			变量名+1，存储该条件所需的第二个值（介于）
 * columnname		排序的字段名
 * sort				排序的方式（ASC|DESC）
 * @author 红莲天舞
 *
 */
public class AgreementsSelectRequirement {
	private int startIndex = 0;
	private int pageCount = 10;
	
	private String emp_name;
	private String semp_name;
	private String emp_name1;
	private String emp_id;
	private String semp_id;
	private String emp_id1;
	private String emp_department;
	private String semp_department;
	private String emp_department1;
	private String emp_job;
	private String semp_job;
	private String emp_job1;
	private String emp_academic_title;
	private String semp_academic_title;
	private String emp_academic_title1;
	private String emp_work_category ;
	private String semp_work_category ;
	private String emp_work_category1 ;
	private String emp_grade;
	private String semp_grade;
	private String emp_grade1;
	private String emp_idnumber;
	private String semp_idnumber;
	private String emp_idnumber1;
	private String agreementno;
	private String sagreementno;
	private String agreementno1;
	private String aname;
	private String saname;
	private String aname1;
	private String atype;
	private String satype;
	private String atype1;
	private String regular;
	private String sregular;
	private String regular1;
	private Date signdata;
	private Date ssigndata;
	private Date signdata1;
	private Double probation_period;
	private Double sprobation_period;
	private Double probation_period1;
	private Date probation_begindata;
	private Date sprobation_begindata;
	private Date probation_begindata1;
	private BigDecimal probation_sal;
	private BigDecimal sprobation_sal;
	private BigDecimal probation_sal1;
	private Date probation_overdata;
	private Date sprobation_overdata;
	private Date probation_overdata1;
	private String agreementperiod;
	private String sagreementperiod;
	private String agreementperiod1;
	private Date starttime;
	private Date sstarttime;
	private Date starttime1;
	private BigDecimal regularsal;
	private BigDecimal sregularsal;
	private BigDecimal regularsal1;
	private Date endtime;
	private Date sendtime;
	private Date endtime1;
	private String documents;
	private String sdocuments;
	private String documents1;
	private String notes;
	private String snotes;
	private String notes1;
	
	private String columnname;
	private String sort;
	/**
	 * @return startIndex
	 */
	public int getStartIndex() {
		return startIndex;
	}
	/**
	 * @param startIndex 要设置的 startIndex
	 */
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	/**
	 * @return pageCount
	 */
	public int getPageCount() {
		return pageCount;
	}
	/**
	 * @param pageCount 要设置的 pageCount
	 */
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
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
	 * @return semp_name
	 */
	public String getSemp_name() {
		return semp_name;
	}
	/**
	 * @param semp_name 要设置的 semp_name
	 */
	public void setSemp_name(String semp_name) {
		this.semp_name = semp_name;
	}
	/**
	 * @return emp_name1
	 */
	public String getEmp_name1() {
		return emp_name1;
	}
	/**
	 * @param emp_name1 要设置的 emp_name1
	 */
	public void setEmp_name1(String emp_name1) {
		this.emp_name1 = emp_name1;
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
	 * @return semp_id
	 */
	public String getSemp_id() {
		return semp_id;
	}
	/**
	 * @param semp_id 要设置的 semp_id
	 */
	public void setSemp_id(String semp_id) {
		this.semp_id = semp_id;
	}
	/**
	 * @return emp_id1
	 */
	public String getEmp_id1() {
		return emp_id1;
	}
	/**
	 * @param emp_id1 要设置的 emp_id1
	 */
	public void setEmp_id1(String emp_id1) {
		this.emp_id1 = emp_id1;
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
	 * @return semp_department
	 */
	public String getSemp_department() {
		return semp_department;
	}
	/**
	 * @param semp_department 要设置的 semp_department
	 */
	public void setSemp_department(String semp_department) {
		this.semp_department = semp_department;
	}
	/**
	 * @return emp_department1
	 */
	public String getEmp_department1() {
		return emp_department1;
	}
	/**
	 * @param emp_department1 要设置的 emp_department1
	 */
	public void setEmp_department1(String emp_department1) {
		this.emp_department1 = emp_department1;
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
	 * @return semp_job
	 */
	public String getSemp_job() {
		return semp_job;
	}
	/**
	 * @param semp_job 要设置的 semp_job
	 */
	public void setSemp_job(String semp_job) {
		this.semp_job = semp_job;
	}
	/**
	 * @return emp_job1
	 */
	public String getEmp_job1() {
		return emp_job1;
	}
	/**
	 * @param emp_job1 要设置的 emp_job1
	 */
	public void setEmp_job1(String emp_job1) {
		this.emp_job1 = emp_job1;
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
	 * @return semp_academic_title
	 */
	public String getSemp_academic_title() {
		return semp_academic_title;
	}
	/**
	 * @param semp_academic_title 要设置的 semp_academic_title
	 */
	public void setSemp_academic_title(String semp_academic_title) {
		this.semp_academic_title = semp_academic_title;
	}
	/**
	 * @return emp_academic_title1
	 */
	public String getEmp_academic_title1() {
		return emp_academic_title1;
	}
	/**
	 * @param emp_academic_title1 要设置的 emp_academic_title1
	 */
	public void setEmp_academic_title1(String emp_academic_title1) {
		this.emp_academic_title1 = emp_academic_title1;
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
	 * @return semp_work_category
	 */
	public String getSemp_work_category() {
		return semp_work_category;
	}
	/**
	 * @param semp_work_category 要设置的 semp_work_category
	 */
	public void setSemp_work_category(String semp_work_category) {
		this.semp_work_category = semp_work_category;
	}
	/**
	 * @return emp_work_category1
	 */
	public String getEmp_work_category1() {
		return emp_work_category1;
	}
	/**
	 * @param emp_work_category1 要设置的 emp_work_category1
	 */
	public void setEmp_work_category1(String emp_work_category1) {
		this.emp_work_category1 = emp_work_category1;
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
	 * @return semp_grade
	 */
	public String getSemp_grade() {
		return semp_grade;
	}
	/**
	 * @param semp_grade 要设置的 semp_grade
	 */
	public void setSemp_grade(String semp_grade) {
		this.semp_grade = semp_grade;
	}
	/**
	 * @return emp_grade1
	 */
	public String getEmp_grade1() {
		return emp_grade1;
	}
	/**
	 * @param emp_grade1 要设置的 emp_grade1
	 */
	public void setEmp_grade1(String emp_grade1) {
		this.emp_grade1 = emp_grade1;
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
	 * @return semp_idnumber
	 */
	public String getSemp_idnumber() {
		return semp_idnumber;
	}
	/**
	 * @param semp_idnumber 要设置的 semp_idnumber
	 */
	public void setSemp_idnumber(String semp_idnumber) {
		this.semp_idnumber = semp_idnumber;
	}
	/**
	 * @return emp_idnumber1
	 */
	public String getEmp_idnumber1() {
		return emp_idnumber1;
	}
	/**
	 * @param emp_idnumber1 要设置的 emp_idnumber1
	 */
	public void setEmp_idnumber1(String emp_idnumber1) {
		this.emp_idnumber1 = emp_idnumber1;
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
	 * @return sagreementno
	 */
	public String getSagreementno() {
		return sagreementno;
	}
	/**
	 * @param sagreementno 要设置的 sagreementno
	 */
	public void setSagreementno(String sagreementno) {
		this.sagreementno = sagreementno;
	}
	/**
	 * @return agreementno1
	 */
	public String getAgreementno1() {
		return agreementno1;
	}
	/**
	 * @param agreementno1 要设置的 agreementno1
	 */
	public void setAgreementno1(String agreementno1) {
		this.agreementno1 = agreementno1;
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
	 * @return saname
	 */
	public String getSaname() {
		return saname;
	}
	/**
	 * @param saname 要设置的 saname
	 */
	public void setSaname(String saname) {
		this.saname = saname;
	}
	/**
	 * @return aname1
	 */
	public String getAname1() {
		return aname1;
	}
	/**
	 * @param aname1 要设置的 aname1
	 */
	public void setAname1(String aname1) {
		this.aname1 = aname1;
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
	 * @return satype
	 */
	public String getSatype() {
		return satype;
	}
	/**
	 * @param satype 要设置的 satype
	 */
	public void setSatype(String satype) {
		this.satype = satype;
	}
	/**
	 * @return atype1
	 */
	public String getAtype1() {
		return atype1;
	}
	/**
	 * @param atype1 要设置的 atype1
	 */
	public void setAtype1(String atype1) {
		this.atype1 = atype1;
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
	 * @return sregular
	 */
	public String getSregular() {
		return sregular;
	}
	/**
	 * @param sregular 要设置的 sregular
	 */
	public void setSregular(String sregular) {
		this.sregular = sregular;
	}
	/**
	 * @return regular1
	 */
	public String getRegular1() {
		return regular1;
	}
	/**
	 * @param regular1 要设置的 regular1
	 */
	public void setRegular1(String regular1) {
		this.regular1 = regular1;
	}
	/**
	 * @return signdata
	 */
	public Date getSigndata() {
		return signdata;
	}
	/**
	 * @param signdata 要设置的 signdata
	 */
	public void setSigndata(Date signdata) {
		this.signdata = signdata;
	}
	/**
	 * @return ssigndata
	 */
	public Date getSsigndata() {
		return ssigndata;
	}
	/**
	 * @param ssigndata 要设置的 ssigndata
	 */
	public void setSsigndata(Date ssigndata) {
		this.ssigndata = ssigndata;
	}
	/**
	 * @return signdata1
	 */
	public Date getSigndata1() {
		return signdata1;
	}
	/**
	 * @param signdata1 要设置的 signdata1
	 */
	public void setSigndata1(Date signdata1) {
		this.signdata1 = signdata1;
	}
	/**
	 * @return probation_period
	 */
	public Double getProbation_period() {
		return probation_period;
	}
	/**
	 * @param probation_period 要设置的 probation_period
	 */
	public void setProbation_period(Double probation_period) {
		this.probation_period = probation_period;
	}
	/**
	 * @return sprobation_period
	 */
	public Double getSprobation_period() {
		return sprobation_period;
	}
	/**
	 * @param sprobation_period 要设置的 sprobation_period
	 */
	public void setSprobation_period(Double sprobation_period) {
		this.sprobation_period = sprobation_period;
	}
	/**
	 * @return probation_period1
	 */
	public Double getProbation_period1() {
		return probation_period1;
	}
	/**
	 * @param probation_period1 要设置的 probation_period1
	 */
	public void setProbation_period1(Double probation_period1) {
		this.probation_period1 = probation_period1;
	}
	/**
	 * @return probation_begindata
	 */
	public Date getProbation_begindata() {
		return probation_begindata;
	}
	/**
	 * @param probation_begindata 要设置的 probation_begindata
	 */
	public void setProbation_begindata(Date probation_begindata) {
		this.probation_begindata = probation_begindata;
	}
	/**
	 * @return sprobation_begindata
	 */
	public Date getSprobation_begindata() {
		return sprobation_begindata;
	}
	/**
	 * @param sprobation_begindata 要设置的 sprobation_begindata
	 */
	public void setSprobation_begindata(Date sprobation_begindata) {
		this.sprobation_begindata = sprobation_begindata;
	}
	/**
	 * @return probation_begindata1
	 */
	public Date getProbation_begindata1() {
		return probation_begindata1;
	}
	/**
	 * @param probation_begindata1 要设置的 probation_begindata1
	 */
	public void setProbation_begindata1(Date probation_begindata1) {
		this.probation_begindata1 = probation_begindata1;
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
	 * @return sprobation_sal
	 */
	public BigDecimal getSprobation_sal() {
		return sprobation_sal;
	}
	/**
	 * @param sprobation_sal 要设置的 sprobation_sal
	 */
	public void setSprobation_sal(BigDecimal sprobation_sal) {
		this.sprobation_sal = sprobation_sal;
	}
	/**
	 * @return probation_sal1
	 */
	public BigDecimal getProbation_sal1() {
		return probation_sal1;
	}
	/**
	 * @param probation_sal1 要设置的 probation_sal1
	 */
	public void setProbation_sal1(BigDecimal probation_sal1) {
		this.probation_sal1 = probation_sal1;
	}
	/**
	 * @return probation_overdata
	 */
	public Date getProbation_overdata() {
		return probation_overdata;
	}
	/**
	 * @param probation_overdata 要设置的 probation_overdata
	 */
	public void setProbation_overdata(Date probation_overdata) {
		this.probation_overdata = probation_overdata;
	}
	/**
	 * @return sprobation_overdata
	 */
	public Date getSprobation_overdata() {
		return sprobation_overdata;
	}
	/**
	 * @param sprobation_overdata 要设置的 sprobation_overdata
	 */
	public void setSprobation_overdata(Date sprobation_overdata) {
		this.sprobation_overdata = sprobation_overdata;
	}
	/**
	 * @return probation_overdata1
	 */
	public Date getProbation_overdata1() {
		return probation_overdata1;
	}
	/**
	 * @param probation_overdata1 要设置的 probation_overdata1
	 */
	public void setProbation_overdata1(Date probation_overdata1) {
		this.probation_overdata1 = probation_overdata1;
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
	 * @return sagreementperiod
	 */
	public String getSagreementperiod() {
		return sagreementperiod;
	}
	/**
	 * @param sagreementperiod 要设置的 sagreementperiod
	 */
	public void setSagreementperiod(String sagreementperiod) {
		this.sagreementperiod = sagreementperiod;
	}
	/**
	 * @return agreementperiod1
	 */
	public String getAgreementperiod1() {
		return agreementperiod1;
	}
	/**
	 * @param agreementperiod1 要设置的 agreementperiod1
	 */
	public void setAgreementperiod1(String agreementperiod1) {
		this.agreementperiod1 = agreementperiod1;
	}
	/**
	 * @return starttime
	 */
	public Date getStarttime() {
		return starttime;
	}
	/**
	 * @param starttime 要设置的 starttime
	 */
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	/**
	 * @return sstarttime
	 */
	public Date getSstarttime() {
		return sstarttime;
	}
	/**
	 * @param sstarttime 要设置的 sstarttime
	 */
	public void setSstarttime(Date sstarttime) {
		this.sstarttime = sstarttime;
	}
	/**
	 * @return starttime1
	 */
	public Date getStarttime1() {
		return starttime1;
	}
	/**
	 * @param starttime1 要设置的 starttime1
	 */
	public void setStarttime1(Date starttime1) {
		this.starttime1 = starttime1;
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
	 * @return sregularsal
	 */
	public BigDecimal getSregularsal() {
		return sregularsal;
	}
	/**
	 * @param sregularsal 要设置的 sregularsal
	 */
	public void setSregularsal(BigDecimal sregularsal) {
		this.sregularsal = sregularsal;
	}
	/**
	 * @return regularsal1
	 */
	public BigDecimal getRegularsal1() {
		return regularsal1;
	}
	/**
	 * @param regularsal1 要设置的 regularsal1
	 */
	public void setRegularsal1(BigDecimal regularsal1) {
		this.regularsal1 = regularsal1;
	}
	/**
	 * @return endtime
	 */
	public Date getEndtime() {
		return endtime;
	}
	/**
	 * @param endtime 要设置的 endtime
	 */
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	/**
	 * @return sendtime
	 */
	public Date getSendtime() {
		return sendtime;
	}
	/**
	 * @param sendtime 要设置的 sendtime
	 */
	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}
	/**
	 * @return endtime1
	 */
	public Date getEndtime1() {
		return endtime1;
	}
	/**
	 * @param endtime1 要设置的 endtime1
	 */
	public void setEndtime1(Date endtime1) {
		this.endtime1 = endtime1;
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
	 * @return sdocuments
	 */
	public String getSdocuments() {
		return sdocuments;
	}
	/**
	 * @param sdocuments 要设置的 sdocuments
	 */
	public void setSdocuments(String sdocuments) {
		this.sdocuments = sdocuments;
	}
	/**
	 * @return documents1
	 */
	public String getDocuments1() {
		return documents1;
	}
	/**
	 * @param documents1 要设置的 documents1
	 */
	public void setDocuments1(String documents1) {
		this.documents1 = documents1;
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
	 * @return snotes
	 */
	public String getSnotes() {
		return snotes;
	}
	/**
	 * @param snotes 要设置的 snotes
	 */
	public void setSnotes(String snotes) {
		this.snotes = snotes;
	}
	/**
	 * @return notes1
	 */
	public String getNotes1() {
		return notes1;
	}
	/**
	 * @param notes1 要设置的 notes1
	 */
	public void setNotes1(String notes1) {
		this.notes1 = notes1;
	}
	/**
	 * @return columnname
	 */
	public String getColumnname() {
		return columnname;
	}
	/**
	 * @param columnname 要设置的 columnname
	 */
	public void setColumnname(String columnname) {
		this.columnname = columnname;
	}
	/**
	 * @return sort
	 */
	public String getSort() {
		return sort;
	}
	/**
	 * @param sort 要设置的 sort
	 */
	public void setSort(String sort) {
		this.sort = sort;
	}
	
	
}
