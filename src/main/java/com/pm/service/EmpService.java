package com.pm.service;

import java.util.List;

import com.pm.model.Condition;
import com.pm.model.Emp;

public interface EmpService {

	Emp queryEmp(int empId);
	List<Emp> queryEmpList();
	List<Emp> queryEmpVague(String keyword);
	List<Emp> queryEmpStrict(List<Condition> conditionList);
	void insertEmp(Emp emp);
	void updateEmp(Emp emp);
	void deleteEmp(int empId);
}
