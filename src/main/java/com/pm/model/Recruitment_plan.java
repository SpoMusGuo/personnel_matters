package com.pm.model;

import java.util.Date;
/**
 * planno			计划编号
 * planname			计划名称
 * resruimentway	招聘方式
 * Budget			预计费用
 * recruitmentnum	招聘人数
 * registerdate		登记日期
 * begindate		开始日期
 * overdate			结束日期
 * recruimentshow	招聘说明
 * recruimentnote	招聘备注
 * registerter		登记人
 * @author 红莲天舞
 *
 */
public class Recruitment_plan {
	private String planno;
	private String planname;
	private String resruimentway;
	private Double Budget;
	private int recruitmentnum;
	private Date registerdate;
	private Date begindate;
	private Date overdate;
	private String recruimentshow;
	private String recruimentnote;
	private String registerter;
	
	/**
	 * @return the planno
	 */
	public String getPlanno() {
		return planno;
	}
	/**
	 * @param planno the planno to set
	 */
	public void setPlanno(String planno) {
		this.planno = planno;
	}
	/**
	 * @return the planname
	 */
	public String getPlanname() {
		return planname;
	}
	/**
	 * @param planname the planname to set
	 */
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	/**
	 * @return the resruimentway
	 */
	public String getResruimentway() {
		return resruimentway;
	}
	/**
	 * @param resruimentway the resruimentway to set
	 */
	public void setResruimentway(String resruimentway) {
		this.resruimentway = resruimentway;
	}
	/**
	 * @return the budget
	 */
	public Double getBudget() {
		return Budget;
	}
	/**
	 * @param budget the budget to set
	 */
	public void setBudget(Double budget) {
		Budget = budget;
	}
	/**
	 * @return the recruitmentnum
	 */
	public int getRecruitmentnum() {
		return recruitmentnum;
	}
	/**
	 * @param recruitmentnum the recruitmentnum to set
	 */
	public void setRecruitmentnum(int recruitmentnum) {
		this.recruitmentnum = recruitmentnum;
	}
	/**
	 * @return the registerdate
	 */
	public Date getRegisterdate() {
		return registerdate;
	}
	/**
	 * @param registerdate the registerdate to set
	 */
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	/**
	 * @return the begindate
	 */
	public Date getBegindate() {
		return begindate;
	}
	/**
	 * @param begindate the begindate to set
	 */
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	/**
	 * @return the overdate
	 */
	public Date getOverdate() {
		return overdate;
	}
	/**
	 * @param overdate the overdate to set
	 */
	public void setOverdate(Date overdate) {
		this.overdate = overdate;
	}
	/**
	 * @return the recruimentshow
	 */
	public String getRecruimentshow() {
		return recruimentshow;
	}
	/**
	 * @param recruimentshow the recruimentshow to set
	 */
	public void setRecruimentshow(String recruimentshow) {
		this.recruimentshow = recruimentshow;
	}
	/**
	 * @return the recruimentnote
	 */
	public String getRecruimentnote() {
		return recruimentnote;
	}
	/**
	 * @param recruimentnote the recruimentnote to set
	 */
	public void setRecruimentnote(String recruimentnote) {
		this.recruimentnote = recruimentnote;
	}
	/**
	 * @return the registerter
	 */
	public String getRegisterter() {
		return registerter;
	}
	/**
	 * @param registerter the registerter to set
	 */
	public void setRegisterter(String registerter) {
		this.registerter = registerter;
	}
	
}
