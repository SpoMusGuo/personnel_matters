package com.pm.model;

import java.math.BigDecimal;
import java.util.Date;

/*

计划名称	train_plan_name	
主办部门	train_sponsoring_dept
培训课程	train_course	
培训机构	train_organization	
培训类型	train_type	
培训形式	train_form	
培训地址	train_address	
授课老师	train_teacher	
授课时数	train_periods	
起始时间	train_start_time			
结束时间	train_finish_time			
计划费用	train_plan_cost
参加人数	train_join_people
培训对象	train_object	

*/

public class Train {
	public String train_plan_name;
	public String train_sponsoring_dept;
	public String train_course;
	public String train_organization;
	public String train_type;
	public String train_form;
	public String train_address;
	public String train_teacher;
	public int train_periods;
	public Date train_start_time;
	public Date train_finish_time;
	public BigDecimal train_plan_cost;
	public int train_join_people;
	public String train_object;
	
	public String getTrain_plan_name() {
		return train_plan_name;
	}
	public void setTrain_plan_name(String train_plan_name) {
		this.train_plan_name = train_plan_name;
	}
	public String getTrain_sponsoring_dept() {
		return train_sponsoring_dept;
	}
	public void setTrain_sponsoring_dept(String train_sponsoring_dept) {
		this.train_sponsoring_dept = train_sponsoring_dept;
	}
	public String getTrain_course() {
		return train_course;
	}
	public void setTrain_course(String train_course) {
		this.train_course = train_course;
	}
	public String getTrain_organization() {
		return train_organization;
	}
	public void setTrain_organization(String train_organization) {
		this.train_organization = train_organization;
	}
	public String getTrain_type() {
		return train_type;
	}
	public void setTrain_type(String train_type) {
		this.train_type = train_type;
	}
	public String getTrain_form() {
		return train_form;
	}
	public void setTrain_form(String train_form) {
		this.train_form = train_form;
	}
	public String getTrain_address() {
		return train_address;
	}
	public void setTrain_address(String train_address) {
		this.train_address = train_address;
	}
	public String getTrain_teacher() {
		return train_teacher;
	}
	public void setTrain_teacher(String train_teacher) {
		this.train_teacher = train_teacher;
	}
	public int getTrain_periods() {
		return train_periods;
	}
	public void setTrain_periods(int train_periods) {
		this.train_periods = train_periods;
	}
	public Date getTrain_start_time() {
		return train_start_time;
	}
	public void setTrain_start_time(Date train_start_time) {
		this.train_start_time = train_start_time;
	}
	public Date getTrain_finish_time() {
		return train_finish_time;
	}
	public void setTrain_finish_time(Date train_finish_time) {
		this.train_finish_time = train_finish_time;
	}
	public BigDecimal getTrain_plan_cost() {
		return train_plan_cost;
	}
	public void setTrain_plan_cost(BigDecimal train_plan_cost) {
		this.train_plan_cost = train_plan_cost;
	}
	public int getTrain_join_people() {
		return train_join_people;
	}
	public void setTrain_join_people(int train_join_people) {
		this.train_join_people = train_join_people;
	}
	public String getTrain_object() {
		return train_object;
	}
	public void setTrain_object(String train_object) {
		this.train_object = train_object;
	}
	
	

}
