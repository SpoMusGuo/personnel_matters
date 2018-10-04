package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Pager;
import com.pm.model.TaxGrade;

@Repository(value="payrollMapper")
public interface PayrollMapper {
	public List<TaxGrade> TaxGradeList(Pager pager);
	public void removeTaxGrade(int taxgrade_grade);
	public Integer getTaxGradeCount();
	public List<TaxGrade> SearchTaxGrades(String keyWord);
}
