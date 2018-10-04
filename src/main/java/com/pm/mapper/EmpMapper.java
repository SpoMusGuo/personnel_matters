package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Emp;

@Repository
public interface EmpMapper {

	Emp queryEmp(int empId);
	List<Emp> queryEmpList();
	List<Emp> queryEmpVague(String keyword);
}
