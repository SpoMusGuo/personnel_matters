package com.pm.ctrl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Emp;
import com.pm.model.Paging;
import com.pm.service.EmpService;

@Controller
public class PersonnelManageCtrl {
	
	@Autowired
	private EmpService empservice;

	@RequestMapping("/index_emp")
	public String queryEmpList(String pageSize, String currentPage, List<Emp> empsa, Map map) {

		Integer iPageSize;
		Integer iCurrentPage;
		
		if(pageSize != null) {
			iPageSize = Integer.parseInt(pageSize);
		} else {
			iPageSize = 15;
		}
		if(currentPage != null) {
			iCurrentPage = Integer.parseInt(currentPage);
		} else {
			iCurrentPage = 1;
		}
//		if(emps == null) {
		List<Emp> emps = empservice.queryEmpList();
//		}
		
		map.put("EMPS", emps);
		map.put("PAGING", new Paging(emps.size(), iCurrentPage, iPageSize));
		return "index_emp";
	}
	
//	@RequestMapping("/emp_search")
//	public String queryEmpVague(String pageSize, String currentPage, String keyword, Map map) {
//
//		List<Emp> emps = empservice.queryEmpVague(keyword);
//		return this.queryEmpList(pageSize, currentPage, emps, map);
//	}
}
