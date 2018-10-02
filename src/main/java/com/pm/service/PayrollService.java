package com.pm.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Pager;
import com.pm.model.TaxGrade;

public interface PayrollService {
	public List<TaxGrade> getTaxGrade(Pager pager);//获取所有个人所得税等级
	public void removeTaxGrade(int taxgrade_grade);//删除个人所得税等级
	public Integer getTaxGradeCount();//获得个人所得税条数
}
