package com.pm.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * startIndex		分页查询起始下标
 * pageCount		分页查询的最大条数
 * planno			存储该条件的值
 * splanno		S+变量名，存储该条件的条件类型（=，!= , > ,>= ,小于, 小于等于, 介于, 形如, 非空, 为空）
 * planno1			变量名+1，存储该条件所需的第二个值（介于）
 * columnname		排序的字段名
 * sort				排序的方式（ASC|DESC）
 * @author 红莲天舞
 *
 */
public class Recruitment_planSelectRequirement {
	private int startIndex = 0;
	private int pageCount = 10;
	
	private String planno;
	private String splanno;
	private String planno1;
	private String planname;
	private String splanname;
	private String planname1;
	private String resruimentway;
	private String sresruimentway;
	private String resruimentway1;
	private BigDecimal Budget;
	private BigDecimal sBudget;
	private BigDecimal Budget1;
	private int recruitmentnum;
	private int srecruitmentnum;
	private int recruitmentnum1;
	private Date registerdate;
	private Date sregisterdate;
	private Date registerdate1;
	private Date begindate;
	private Date sbegindate;
	private Date begindate1;
	private Date overdate;
	private Date soverdate;
	private Date overdate1;
	private String recruimentshow;
	private String srecruimentshow;
	private String recruimentshow1;
	private String recruimentnote;
	private String srecruimentnote;
	private String recruimentnote1;
	private String registerter;
	private String sregisterter;
	private String registerter1;
	
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
	 * @return planno
	 */
	public String getPlanno() {
		return planno;
	}
	/**
	 * @param planno 要设置的 planno
	 */
	public void setPlanno(String planno) {
		this.planno = planno;
	}
	/**
	 * @return splanno
	 */
	public String getSplanno() {
		return splanno;
	}
	/**
	 * @param splanno 要设置的 splanno
	 */
	public void setSplanno(String splanno) {
		this.splanno = splanno;
	}
	/**
	 * @return planno1
	 */
	public String getPlanno1() {
		return planno1;
	}
	/**
	 * @param planno1 要设置的 planno1
	 */
	public void setPlanno1(String planno1) {
		this.planno1 = planno1;
	}
	/**
	 * @return planname
	 */
	public String getPlanname() {
		return planname;
	}
	/**
	 * @param planname 要设置的 planname
	 */
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	/**
	 * @return splanname
	 */
	public String getSplanname() {
		return splanname;
	}
	/**
	 * @param splanname 要设置的 splanname
	 */
	public void setSplanname(String splanname) {
		this.splanname = splanname;
	}
	/**
	 * @return planname1
	 */
	public String getPlanname1() {
		return planname1;
	}
	/**
	 * @param planname1 要设置的 planname1
	 */
	public void setPlanname1(String planname1) {
		this.planname1 = planname1;
	}
	/**
	 * @return resruimentway
	 */
	public String getResruimentway() {
		return resruimentway;
	}
	/**
	 * @param resruimentway 要设置的 resruimentway
	 */
	public void setResruimentway(String resruimentway) {
		this.resruimentway = resruimentway;
	}
	/**
	 * @return sresruimentway
	 */
	public String getSresruimentway() {
		return sresruimentway;
	}
	/**
	 * @param sresruimentway 要设置的 sresruimentway
	 */
	public void setSresruimentway(String sresruimentway) {
		this.sresruimentway = sresruimentway;
	}
	/**
	 * @return resruimentway1
	 */
	public String getResruimentway1() {
		return resruimentway1;
	}
	/**
	 * @param resruimentway1 要设置的 resruimentway1
	 */
	public void setResruimentway1(String resruimentway1) {
		this.resruimentway1 = resruimentway1;
	}
	/**
	 * @return budget
	 */
	public BigDecimal getBudget() {
		return Budget;
	}
	/**
	 * @param budget 要设置的 budget
	 */
	public void setBudget(BigDecimal budget) {
		Budget = budget;
	}
	/**
	 * @return sBudget
	 */
	public BigDecimal getsBudget() {
		return sBudget;
	}
	/**
	 * @param sBudget 要设置的 sBudget
	 */
	public void setsBudget(BigDecimal sBudget) {
		this.sBudget = sBudget;
	}
	/**
	 * @return budget1
	 */
	public BigDecimal getBudget1() {
		return Budget1;
	}
	/**
	 * @param budget1 要设置的 budget1
	 */
	public void setBudget1(BigDecimal budget1) {
		Budget1 = budget1;
	}
	/**
	 * @return recruitmentnum
	 */
	public int getRecruitmentnum() {
		return recruitmentnum;
	}
	/**
	 * @param recruitmentnum 要设置的 recruitmentnum
	 */
	public void setRecruitmentnum(int recruitmentnum) {
		this.recruitmentnum = recruitmentnum;
	}
	/**
	 * @return srecruitmentnum
	 */
	public int getSrecruitmentnum() {
		return srecruitmentnum;
	}
	/**
	 * @param srecruitmentnum 要设置的 srecruitmentnum
	 */
	public void setSrecruitmentnum(int srecruitmentnum) {
		this.srecruitmentnum = srecruitmentnum;
	}
	/**
	 * @return recruitmentnum1
	 */
	public int getRecruitmentnum1() {
		return recruitmentnum1;
	}
	/**
	 * @param recruitmentnum1 要设置的 recruitmentnum1
	 */
	public void setRecruitmentnum1(int recruitmentnum1) {
		this.recruitmentnum1 = recruitmentnum1;
	}
	/**
	 * @return registerdate
	 */
	public Date getRegisterdate() {
		return registerdate;
	}
	/**
	 * @param registerdate 要设置的 registerdate
	 */
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	/**
	 * @return sregisterdate
	 */
	public Date getSregisterdate() {
		return sregisterdate;
	}
	/**
	 * @param sregisterdate 要设置的 sregisterdate
	 */
	public void setSregisterdate(Date sregisterdate) {
		this.sregisterdate = sregisterdate;
	}
	/**
	 * @return registerdate1
	 */
	public Date getRegisterdate1() {
		return registerdate1;
	}
	/**
	 * @param registerdate1 要设置的 registerdate1
	 */
	public void setRegisterdate1(Date registerdate1) {
		this.registerdate1 = registerdate1;
	}
	/**
	 * @return begindate
	 */
	public Date getBegindate() {
		return begindate;
	}
	/**
	 * @param begindate 要设置的 begindate
	 */
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	/**
	 * @return sbegindate
	 */
	public Date getSbegindate() {
		return sbegindate;
	}
	/**
	 * @param sbegindate 要设置的 sbegindate
	 */
	public void setSbegindate(Date sbegindate) {
		this.sbegindate = sbegindate;
	}
	/**
	 * @return begindate1
	 */
	public Date getBegindate1() {
		return begindate1;
	}
	/**
	 * @param begindate1 要设置的 begindate1
	 */
	public void setBegindate1(Date begindate1) {
		this.begindate1 = begindate1;
	}
	/**
	 * @return overdate
	 */
	public Date getOverdate() {
		return overdate;
	}
	/**
	 * @param overdate 要设置的 overdate
	 */
	public void setOverdate(Date overdate) {
		this.overdate = overdate;
	}
	/**
	 * @return soverdate
	 */
	public Date getSoverdate() {
		return soverdate;
	}
	/**
	 * @param soverdate 要设置的 soverdate
	 */
	public void setSoverdate(Date soverdate) {
		this.soverdate = soverdate;
	}
	/**
	 * @return overdate1
	 */
	public Date getOverdate1() {
		return overdate1;
	}
	/**
	 * @param overdate1 要设置的 overdate1
	 */
	public void setOverdate1(Date overdate1) {
		this.overdate1 = overdate1;
	}
	/**
	 * @return recruimentshow
	 */
	public String getRecruimentshow() {
		return recruimentshow;
	}
	/**
	 * @param recruimentshow 要设置的 recruimentshow
	 */
	public void setRecruimentshow(String recruimentshow) {
		this.recruimentshow = recruimentshow;
	}
	/**
	 * @return srecruimentshow
	 */
	public String getSrecruimentshow() {
		return srecruimentshow;
	}
	/**
	 * @param srecruimentshow 要设置的 srecruimentshow
	 */
	public void setSrecruimentshow(String srecruimentshow) {
		this.srecruimentshow = srecruimentshow;
	}
	/**
	 * @return recruimentshow1
	 */
	public String getRecruimentshow1() {
		return recruimentshow1;
	}
	/**
	 * @param recruimentshow1 要设置的 recruimentshow1
	 */
	public void setRecruimentshow1(String recruimentshow1) {
		this.recruimentshow1 = recruimentshow1;
	}
	/**
	 * @return recruimentnote
	 */
	public String getRecruimentnote() {
		return recruimentnote;
	}
	/**
	 * @param recruimentnote 要设置的 recruimentnote
	 */
	public void setRecruimentnote(String recruimentnote) {
		this.recruimentnote = recruimentnote;
	}
	/**
	 * @return srecruimentnote
	 */
	public String getSrecruimentnote() {
		return srecruimentnote;
	}
	/**
	 * @param srecruimentnote 要设置的 srecruimentnote
	 */
	public void setSrecruimentnote(String srecruimentnote) {
		this.srecruimentnote = srecruimentnote;
	}
	/**
	 * @return recruimentnote1
	 */
	public String getRecruimentnote1() {
		return recruimentnote1;
	}
	/**
	 * @param recruimentnote1 要设置的 recruimentnote1
	 */
	public void setRecruimentnote1(String recruimentnote1) {
		this.recruimentnote1 = recruimentnote1;
	}
	/**
	 * @return registerter
	 */
	public String getRegisterter() {
		return registerter;
	}
	/**
	 * @param registerter 要设置的 registerter
	 */
	public void setRegisterter(String registerter) {
		this.registerter = registerter;
	}
	/**
	 * @return sregisterter
	 */
	public String getSregisterter() {
		return sregisterter;
	}
	/**
	 * @param sregisterter 要设置的 sregisterter
	 */
	public void setSregisterter(String sregisterter) {
		this.sregisterter = sregisterter;
	}
	/**
	 * @return registerter1
	 */
	public String getRegisterter1() {
		return registerter1;
	}
	/**
	 * @param registerter1 要设置的 registerter1
	 */
	public void setRegisterter1(String registerter1) {
		this.registerter1 = registerter1;
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
