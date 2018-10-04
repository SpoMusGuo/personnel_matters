package com.pm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.mapper.EmpMapper;
import com.pm.model.Emp;
import com.pm.service.EmpService;

@Service
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

}
