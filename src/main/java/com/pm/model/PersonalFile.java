package com.pm.model;

import java.util.Date;

public class PersonalFile {

	private int personalFileId;
	private int empId;
	private String personalFileApprove;
	private String personalFileCheck;
	private String personalFileWriter;
	private Date personalFileDate;

	
	public int getPersonalFileId() {
		return personalFileId;
	}
	public void setPersonalFileId(int personalFileId) {
		this.personalFileId = personalFileId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getPersonalFileApprove() {
		return personalFileApprove;
	}
	public void setPersonalFileApprove(String personalFileApprove) {
		this.personalFileApprove = personalFileApprove;
	}
	public String getPersonalFileCheck() {
		return personalFileCheck;
	}
	public void setPersonalFileCheck(String personalFileCheck) {
		this.personalFileCheck = personalFileCheck;
	}
	public String getPersonalFileWriter() {
		return personalFileWriter;
	}
	public void setPersonalFileWriter(String personalFileWriter) {
		this.personalFileWriter = personalFileWriter;
	}
	public Date getPersonalFileDate() {
		return personalFileDate;
	}
	public void setPersonalFileDate(Date personalFileDate) {
		this.personalFileDate = personalFileDate;
	}
}
