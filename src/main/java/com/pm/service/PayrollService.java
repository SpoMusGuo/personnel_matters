package com.pm.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Pager;
import com.pm.model.TaxGrade;

public interface PayrollService {
	public List<TaxGrade> getTaxGrades(Pager pager);//获取所有个人所得税等级
	public void removeTaxGrade(int taxgrade_grade);//删除个人所得税等级
	public Integer getTaxGradeCount();//获得个人所得税条数
	public List<TaxGrade> getSearchTaxGrade(String keyWord);//模糊搜索查找所需个人所得税表
	public void updateTaxGrade(TaxGrade taxGrade);//修改个人所得税设置
	public TaxGrade getTaxGrade(String taxgradeGrade);//通过个人所得税等级获取整个税务等级的信息
	public void addTaxGrade(TaxGrade taxGrade);//增加个人所得税设置
//	public List<TaxGrade> getSpecialTaxGrade();
	
}
