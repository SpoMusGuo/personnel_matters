package com.pm.model;

import java.util.Date;

public class WorkExp {

	private int workExpId;
	private int empId;
	private String workExpUnit;
	private String workExpJob;
	private Date workExpHiredate;
	private Date workExpEndDate;
	private String workExpContent;
	private String workExpLeaveReason;
	private String workExpCertifier;
	private String workExpNotes;
	
	
	public int getWorkExpId() {
		return workExpId;
	}
	public void setWorkExpId(int workExpId) {
		this.workExpId = workExpId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getWorkExpUnit() {
		return workExpUnit;
	}
	public void setWorkExpUnit(String workExpUnit) {
		this.workExpUnit = workExpUnit;
	}
	public String getWorkExpJob() {
		return workExpJob;
	}
	public void setWorkExpJob(String workExpJob) {
		this.workExpJob = workExpJob;
	}
	public Date getWorkExpHiredate() {
		return workExpHiredate;
	}
	public void setWorkExpHiredate(Date workExpHiredate) {
		this.workExpHiredate = workExpHiredate;
	}
	public Date getWorkExpEndDate() {
		return workExpEndDate;
	}
	public void setWorkExpEndDate(Date workExpEndDate) {
		this.workExpEndDate = workExpEndDate;
	}
	public String getWorkExpContent() {
		return workExpContent;
	}
	public void setWorkExpContent(String workExpContent) {
		this.workExpContent = workExpContent;
	}
	public String getWorkExpLeaveReason() {
		return workExpLeaveReason;
	}
	public void setWorkExpLeaveReason(String workExpLeaveReason) {
		this.workExpLeaveReason = workExpLeaveReason;
	}
	public String getWorkExpCertifier() {
		return workExpCertifier;
	}
	public void setWorkExpCertifier(String workExpCertifier) {
		this.workExpCertifier = workExpCertifier;
	}
	public String getWorkExpNotes() {
		return workExpNotes;
	}
	public void setWorkExpNotes(String workExpNotes) {
		this.workExpNotes = workExpNotes;
	}
	
}
