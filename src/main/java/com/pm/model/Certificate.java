package com.pm.model;

import java.util.Date;

public class Certificate {

	// 员工
	private Emp emp;

	// 员工编号
	private Integer empId;

	// 证照编号
	private String certificateId;

	// 证照名称
	private String certificateName;

	// 证照类型
	private String certificateType;

	// 有无期限
	private String certificateIsDeadline;

	// 发证机关
	private String certificateOffice;

	// 取证日期
	private Date certificateGetDate;

	// 生效日期
	private Date certificateEffectiveDate;

	// 到期日期
	private Date certificateDeadline;

	// 备注
	private String certificateNotes;

	// 证照图片
	private String certificatePic;

	public Certificate() {

	}

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public Emp getEmp() {
		return emp;
	}

	public void setEmp(Emp emp) {
		this.emp = emp;
	}

	public String getCertificateId() {
		return certificateId;
	}

	public void setCertificateId(String certificateId) {
		this.certificateId = certificateId;
	}

	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	public String getCertificateType() {
		return certificateType;
	}

	public void setCertificateType(String certificateType) {
		this.certificateType = certificateType;
	}

	public String getCertificateIsDeadline() {
		return certificateIsDeadline;
	}

	public void setCertificateIsDeadline(String certificateIsDeadline) {
		this.certificateIsDeadline = certificateIsDeadline;
	}

	public String getCertificateOffice() {
		return certificateOffice;
	}

	public void setCertificateOffice(String certificateOffice) {
		this.certificateOffice = certificateOffice;
	}

	public Date getCertificateGetDate() {
		return certificateGetDate;
	}

	public void setCertificateGetDate(Date certificateGetDate) {
		this.certificateGetDate = certificateGetDate;
	}

	public Date getCertificateEffectiveDate() {
		return certificateEffectiveDate;
	}

	public void setCertificateEffectiveDate(Date certificateEffectiveDate) {
		this.certificateEffectiveDate = certificateEffectiveDate;
	}

	public Date getCertificateDeadline() {
		return certificateDeadline;
	}

	public void setCertificateDeadline(Date certificateDeadline) {
		this.certificateDeadline = certificateDeadline;
	}

	public String getCertificateNotes() {
		return certificateNotes;
	}

	public void setCertificateNotes(String certificateNotes) {
		this.certificateNotes = certificateNotes;
	}

	public String getCertificatePic() {
		return certificatePic;
	}

	public void setCertificatePic(String certificatePic) {
		this.certificatePic = certificatePic;
	}

}
