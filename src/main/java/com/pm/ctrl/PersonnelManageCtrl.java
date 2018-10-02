package com.pm.ctrl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.service.EmpService;

@Controller
public class PersonnelManageCtrl {
	
	@Autowired
	private EmpService empservice;

	@RequestMapping("/index_emp")
	public String queryEmp(Map map) {
		
		List<Emp> emps = empservice.queryEmpList();
		map.put("EMPS", emps);
		map.put("PAGER", new Pager(emps.size(), 2, 10));
		return "index_emp";
	}
}
