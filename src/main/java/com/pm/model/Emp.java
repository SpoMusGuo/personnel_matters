package com.pm.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 员工信息表：emp
 * 
 * 		emp_id				员工编号
 * 		emp_idnumber		身份证号
 * 		emp_name			员工姓名
 * 		emp_native_place	籍贯
 * 		emp_sex				性别
 * 		emp_birthday		生日
 * 		emp_used_name		曾用名
 * 		emp_nation			民族
 * 		emp_age				年龄
 * 		emp_english_name	英文名
 * 		emp_political_status 政治面貌
 * 		emp_marriage		婚否
 * 		emp_education_st	第一学历
 * 		emp_major_st		第一专业
 * 		emp_graduated_st	第一毕业院校
 * 		emp_education_nd	第二学历
 * 		emp_major_nd		第二专业
 * 		emp_graduated_nd	第二毕业院校
 * 		emp_degree			学位
 * 		emp_graduate_time	毕业时间
 * 		emp_computer_level	电脑水平
 * 		emp_foreign_1		外语语种1
 * 		emp_foreign_2		外语语种2
 * 		emp_foreign_3		外语语种3
 * 		emp_foreign_level_1	外语水平1
 * 		emp_foreign_level_2	外语水平2
 * 		emp_foreign_level_3	外语水平3
 * 		emp_apartment		住房情况
 * 		emp_inhabitant		常住人口
 * 		emp_foreigners		外籍人士
 * 		emp_telphone		联系电话
 * 		emp_mobilephone		手机号码
 * 		emp_email			电子邮件
 * 		emp_home_address	家庭住址
 * 		emp_speciality		特长
 * 		emp_department		所属部门
 * 		emp_academic_title	职称
 * 		emp_job				职务
 * 		emp_grade			等级
 * 		emp_job_category	在职类别
 * 		emp_work_category	工种
 * 		emp_hiredate		参加工作时间
 * 		emp_transfer_time	调入时间
 * 		emp_sum_seniority	总工龄
 * 		emp_unit_seniorty	本单位工龄
 * 		emp_bank_account	银行帐号
 * 		emp_base_salary		基本工资
 * 		emp_register_time	录入时间
 * 		emp_photo			照片
 * 
 * @author Z
 *
 */
public class Emp {

	private int empId;
	private String empIdNumber;
	private String empName;	
	private String empNativePlace;
	private String empSex;
	private Date empBirthday;
	private String empUsedName;
	private String empNation;
	private int empAge;
	private String empEnglishName;
	private String empPoliticalStatus;
	private String empMarriage;
	private String empEducationSt;
	private String empMajorSt;
	private String empGraduatedSt;
	private String empEducationNd;
	private String empMajorNd;
	private String empGraduatedNd;
	private String empDegree;
	private Date empGraduateTime;
	private String empComputerLevel;
	private String empForeign1;
	private String empForeign2;
	private String empForeign3;
	private String empForeignLevel1;
	private String empForeignLevel2;
	private String empForeignLevel3;
	private String empApartment;	
	private String empInhabitant;
	private String empForeigners;
	private String empTelphone;
	private String empMobilePhone;
	private String empEmail;
	private String empHomeAddress;
	private String empSpeciality;
	private String empDepartment;
	private String empAcademicTitle;
	private String empJob;
	private String empGrade;
	private String empJobCategory;
	private String empWorkCategory;
	private Date empHiredate;
	private Date empTransferTime;
	private int empSumSeniorty;
	private int empUnitSeniorty;
	private String empBankAccount;
	private BigDecimal empBaseSalary;
	private Date empRegisterTime;
	private String empPhoto;
	
	
	
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpIdNumber() {
		return empIdNumber;
	}
	public void setEmpIdNumber(String empIdNumber) {
		this.empIdNumber = empIdNumber;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpNativePlace() {
		return empNativePlace;
	}
	public void setEmpNativePlace(String empNativePlace) {
		this.empNativePlace = empNativePlace;
	}
	public String getEmpSex() {
		return empSex;
	}
	public void setEmpSex(String empSex) {
		this.empSex = empSex;
	}
	public Date getEmpBirthday() {
		return empBirthday;
	}
	public void setEmpBirthday(Date empBirthday) {
		this.empBirthday = empBirthday;
	}
	public String getEmpUsedName() {
		return empUsedName;
	}
	public void setEmpUsedName(String empUsedName) {
		this.empUsedName = empUsedName;
	}
	public String getEmpNation() {
		return empNation;
	}
	public void setEmpNation(String empNation) {
		this.empNation = empNation;
	}
	public int getEmpAge() {
		return empAge;
	}
	public void setEmpAge(int empAge) {
		this.empAge = empAge;
	}
	public String getEmpEnglishName() {
		return empEnglishName;
	}
	public void setEmpEnglishName(String empEnglishName) {
		this.empEnglishName = empEnglishName;
	}
	public String getEmpPoliticalStatus() {
		return empPoliticalStatus;
	}
	public void setEmpPoliticalStatus(String empPoliticalStatus) {
		this.empPoliticalStatus = empPoliticalStatus;
	}
	public String getEmpMarriage() {
		return empMarriage;
	}
	public void setEmpMarriage(String empMarriage) {
		this.empMarriage = empMarriage;
	}
	public String getEmpEducationSt() {
		return empEducationSt;
	}
	public void setEmpEducationSt(String empEducationSt) {
		this.empEducationSt = empEducationSt;
	}
	public String getEmpMajorSt() {
		return empMajorSt;
	}
	public void setEmpMajorSt(String empMajorSt) {
		this.empMajorSt = empMajorSt;
	}
	public String getEmpGraduatedSt() {
		return empGraduatedSt;
	}
	public void setEmpGraduatedSt(String empGraduatedSt) {
		this.empGraduatedSt = empGraduatedSt;
	}
	public String getEmpEducationNd() {
		return empEducationNd;
	}
	public void setEmpEducationNd(String empEducationNd) {
		this.empEducationNd = empEducationNd;
	}
	public String getEmpMajorNd() {
		return empMajorNd;
	}
	public void setEmpMajorNd(String empMajorNd) {
		this.empMajorNd = empMajorNd;
	}
	public String getEmpGraduatedNd() {
		return empGraduatedNd;
	}
	public void setEmpGraduatedNd(String empGraduatedNd) {
		this.empGraduatedNd = empGraduatedNd;
	}
	public String getEmpDegree() {
		return empDegree;
	}
	public void setEmpDegree(String empDegree) {
		this.empDegree = empDegree;
	}
	public Date getEmpGraduateTime() {
		return empGraduateTime;
	}
	public void setEmpGraduateTime(Date empGraduateTime) {
		this.empGraduateTime = empGraduateTime;
	}
	public String getEmpComputerLevel() {
		return empComputerLevel;
	}
	public void setEmpComputerLevel(String empComputerLevel) {
		this.empComputerLevel = empComputerLevel;
	}
	public String getEmpForeign1() {
		return empForeign1;
	}
	public void setEmpForeign1(String empForeign1) {
		this.empForeign1 = empForeign1;
	}
	public String getEmpForeign2() {
		return empForeign2;
	}
	public void setEmpForeign2(String empForeign2) {
		this.empForeign2 = empForeign2;
	}
	public String getEmpForeign3() {
		return empForeign3;
	}
	public void setEmpForeign3(String empForeign3) {
		this.empForeign3 = empForeign3;
	}
	public String getEmpForeignLevel1() {
		return empForeignLevel1;
	}
	public void setEmpForeignLevel1(String empForeignLevel1) {
		this.empForeignLevel1 = empForeignLevel1;
	}
	public String getEmpForeignLevel2() {
		return empForeignLevel2;
	}
	public void setEmpForeignLevel2(String empForeignLevel2) {
		this.empForeignLevel2 = empForeignLevel2;
	}
	public String getEmpForeignLevel3() {
		return empForeignLevel3;
	}
	public void setEmpForeignLevel3(String empForeignLevel3) {
		this.empForeignLevel3 = empForeignLevel3;
	}
	public String getEmpApartment() {
		return empApartment;
	}
	public void setEmpApartment(String empApartment) {
		this.empApartment = empApartment;
	}
	public String getEmpInhabitant() {
		return empInhabitant;
	}
	public void setEmpInhabitant(String empInhabitant) {
		this.empInhabitant = empInhabitant;
	}
	public String getEmpForeigners() {
		return empForeigners;
	}
	public void setEmpForeigners(String empForeigners) {
		this.empForeigners = empForeigners;
	}
	public String getEmpTelphone() {
		return empTelphone;
	}
	public void setEmpTelphone(String empTelphone) {
		this.empTelphone = empTelphone;
	}
	public String getEmpMobilePhone() {
		return empMobilePhone;
	}
	public void setEmpMobilePhone(String empMobilePhone) {
		this.empMobilePhone = empMobilePhone;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpHomeAddress() {
		return empHomeAddress;
	}
	public void setEmpHomeAddress(String empHomeAddress) {
		this.empHomeAddress = empHomeAddress;
	}
	public String getEmpSpeciality() {
		return empSpeciality;
	}
	public void setEmpSpeciality(String empSpeciality) {
		this.empSpeciality = empSpeciality;
	}
	public String getEmpDepartment() {
		return empDepartment;
	}
	public void setEmpDepartment(String empDepartment) {
		this.empDepartment = empDepartment;
	}
	public String getEmpAcademicTitle() {
		return empAcademicTitle;
	}
	public void setEmpAcademicTitle(String empAcademicTitle) {
		this.empAcademicTitle = empAcademicTitle;
	}
	public String getEmpJob() {
		return empJob;
	}
	public void setEmpJob(String empJob) {
		this.empJob = empJob;
	}
	public String getEmpGrade() {
		return empGrade;
	}
	public void setEmpGrade(String empGrade) {
		this.empGrade = empGrade;
	}
	public String getEmpJobCategory() {
		return empJobCategory;
	}
	public void setEmpJobCategory(String empJobCategory) {
		this.empJobCategory = empJobCategory;
	}
	public String getEmpWorkCategory() {
		return empWorkCategory;
	}
	public void setEmpWorkCategory(String empWorkCategory) {
		this.empWorkCategory = empWorkCategory;
	}
	public Date getEmpHiredate() {
		return empHiredate;
	}
	public void setEmpHiredate(Date empHiredate) {
		this.empHiredate = empHiredate;
	}
	public Date getEmpTransferTime() {
		return empTransferTime;
	}
	public void setEmpTransferTime(Date empTransferTime) {
		this.empTransferTime = empTransferTime;
	}
	public int getEmpSumSeniorty() {
		return empSumSeniorty;
	}
	public void setEmpSumSeniorty(int empSumSeniorty) {
		this.empSumSeniorty = empSumSeniorty;
	}
	public int getEmpUnitSeniorty() {
		return empUnitSeniorty;
	}
	public void setEmpUnitSeniorty(int empUnitSeniorty) {
		this.empUnitSeniorty = empUnitSeniorty;
	}
	public String getEmpBankAccount() {
		return empBankAccount;
	}
	public void setEmpBankAccount(String empBankAccount) {
		this.empBankAccount = empBankAccount;
	}
	public BigDecimal getEmpBaseSalary() {
		return empBaseSalary;
	}
	public void setEmpBaseSalary(BigDecimal empBaseSalary) {
		this.empBaseSalary = empBaseSalary;
	}
	public Date getEmpRegisterTime() {
		return empRegisterTime;
	}
	public void setEmpRegisterTime(Date empRegisterTime) {
		this.empRegisterTime = empRegisterTime;
	}
	public String getEmpPhoto() {
		return empPhoto;
	}
	public void setEmpPhoto(String empPhoto) {
		this.empPhoto = empPhoto;
	}
	
}
