package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.pm.mapper.PayrollMapper;
import com.pm.model.Pager;
import com.pm.model.TaxGrade;
import com.pm.service.PayrollService;

@Repository(value="payrollService")
public class PayrollServiceImpl implements PayrollService{
	@Resource(name="payrollMapper")
	private PayrollMapper payollMapper;
	@Override
	public List<TaxGrade> getTaxGrade(Pager pager) {
		// TODO Auto-generated method stub
		return payollMapper.TaxGradeList(pager);
	}
	@Override
	public void removeTaxGrade(int taxgrade_grade) {
		// TODO Auto-generated method stub
		payollMapper.removeTaxGrade(taxgrade_grade);
	}
	@Override
	public Integer getTaxGradeCount() {
		// TODO Auto-generated method stub
		return payollMapper.getTaxGradeCount();
	}

}
