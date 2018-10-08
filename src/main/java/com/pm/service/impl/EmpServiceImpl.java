package com.pm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.mapper.EmpMapper;
import com.pm.model.Condition;
import com.pm.model.Emp;
import com.pm.service.EmpService;

@Service
@Transactional
public class EmpServiceImpl implements EmpService {
	
	@Autowired
	private EmpMapper empMapper;

	
	@Override
	public Emp queryEmp(int empId) {
		
		return empMapper.queryEmp(empId);
	}

	@Override
	public List<Emp> queryEmpList() {
		
		return empMapper.queryEmpList();
	}

	@Override
	public List<Emp> queryEmpVague(String keyword) {
		
		return empMapper.queryEmpVague(keyword);
	}

	@Override
	public List<Emp> queryEmpStrict(List<Condition> conditionList) {
		
		return empMapper.queryEmpStrict(conditionList);
	}

	@Override
	public void insertEmp(Emp emp) {
		
		empMapper.insertEmp(emp);
	}

	@Override
	public void updateEmp(Emp emp) {
		
		empMapper.updateEmp(emp);
	}

	@Override
	public void deleteEmp(int empId) {
		
		empMapper.deleteEmp(empId);
	}

}
