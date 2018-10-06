package com.pm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pm.model.Condition;
import com.pm.model.Pager;
import com.pm.model.TaxGrade;

@Repository(value="payrollMapper")
public interface PayrollMapper {
	public List<TaxGrade> taxGradeList(Pager pager);
	public void removeTaxGrade(int taxgrade_grade);
	public Integer getTaxGradeCount();
	public Integer getSeacrhGradeCount(String keyword);
	public List<TaxGrade> searchTaxGrades(@Param("keyword")String keyWord, @Param("pager")Pager pager);
	public void updateTaxGrade(TaxGrade taxGrade);
	public TaxGrade getTaxGrade(String taxgradeGrade);
	public void addTaxGrade(TaxGrade taxGrade);
	public List<TaxGrade> getSpecialTaxGrade(List<Condition> listCondition);
}
