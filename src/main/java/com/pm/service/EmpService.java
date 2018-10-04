package com.pm.service;

import java.util.List;

import com.pm.model.Emp;

public interface EmpService {

	Emp queryEmp(int empId);
	List<Emp> queryEmpList();
	List<Emp> queryEmpVague(String keyword);
}
