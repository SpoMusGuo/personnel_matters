package com.pm.model;

import java.util.Date;

public class Student {

	private Integer sno;
	private String sname;
	private Integer sage;
	private Date sdate;

	public Student() {

	}

	public Student(Integer sno) {
		this();
		this.sno = sno;
	}

	public Student(Integer sno, String sname) {
		this(sno);
		this.sname = sname;
	}

	public Student(Integer sno, String sname, Integer sage) {
		this(sno, sname);
		this.sage = sage;
	}

	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public Integer getSno() {
		return sno;
	}

	public void setSno(Integer sno) {
		this.sno = sno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Integer getSage() {
		return sage;
	}

	public void setSage(Integer sage) {
		this.sage = sage;
	}

}
