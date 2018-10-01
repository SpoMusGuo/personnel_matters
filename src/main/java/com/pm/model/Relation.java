package com.pm.model;

import java.util.Date;

public class Relation {
	
	private int relationId;
	private int empId;
	private String relationName;
	private String relationWho;
	private Date relationBirthday;
	private String relationPolitics;
	private String relationWorkUnit;
	private String relationJob;
	private String relationContactWay;
	private String relationNotes;
	
	
	public int getRelationId() {
		return relationId;
	}
	public void setRelationId(int relationId) {
		this.relationId = relationId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getRelationName() {
		return relationName;
	}
	public void setRelationName(String relationName) {
		this.relationName = relationName;
	}
	public String getRelationWho() {
		return relationWho;
	}
	public void setRelationWho(String relationWho) {
		this.relationWho = relationWho;
	}
	public Date getRelationBirthday() {
		return relationBirthday;
	}
	public void setRelationBirthday(Date relationBirthday) {
		this.relationBirthday = relationBirthday;
	}
	public String getRelationPolitics() {
		return relationPolitics;
	}
	public void setRelationPolitics(String relationPolitics) {
		this.relationPolitics = relationPolitics;
	}
	public String getRelationWorkUnit() {
		return relationWorkUnit;
	}
	public void setRelationWorkUnit(String relationWorkUnit) {
		this.relationWorkUnit = relationWorkUnit;
	}
	public String getRelationJob() {
		return relationJob;
	}
	public void setRelationJob(String relationJob) {
		this.relationJob = relationJob;
	}
	public String getRelationContactWay() {
		return relationContactWay;
	}
	public void setRelationContactWay(String relationContactWay) {
		this.relationContactWay = relationContactWay;
	}
	public String getRelationNotes() {
		return relationNotes;
	}
	public void setRelationNotes(String relationNotes) {
		this.relationNotes = relationNotes;
	}
}
