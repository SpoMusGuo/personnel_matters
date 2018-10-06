package com.pm.ctrl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Condition;
import com.pm.model.Emp;
import com.pm.model.Paging;
import com.pm.service.EmpService;

@Controller
public class PersonnelManageCtrl {
	
	@Autowired
	private EmpService empservice;
	
//	public void query(String pageSize, String currentPage, List<Emp> emps, Map map) {
//
//		Integer iPageSize;
//		Integer iCurrentPage;
//		
//		if(pageSize != null) {
//			iPageSize = Integer.parseInt(pageSize);
//		} else {
//			iPageSize = 15;
//		}
//		if(currentPage != null) {
//			iCurrentPage = Integer.parseInt(currentPage);
//		} else {
//			iCurrentPage = 1;
//		}
//		
//		map.put("EMPS", emps);
//		map.put("PAGING", new Paging(emps.size(), iCurrentPage, iPageSize));
//	}

	@RequestMapping("/index_emp")
	public String queryEmpList(String pageSize, String currentPage, String keyword, Map map) {
		
		Integer iPageSize;
		Integer iCurrentPage;
		List<Emp> emps;
		
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
		if(keyword == null || keyword.equals("")) {
			emps = empservice.queryEmpList();
		} else {
			emps = empservice.queryEmpVague(keyword);
		}
		
		map.put("EMPS", emps);
		map.put("PAGING", new Paging(emps.size(), iCurrentPage, iPageSize));
		map.put("KEYWORD", keyword);
		
		return "index_emp";
	}
	
//	@RequestMapping("/emp_search")
//	public String queryEmpVague(String pageSize, String currentPage, String keyword, Map map) {
//
//		List<Emp> emps = empservice.queryEmpVague(keyword);
//		this.query(pageSize, currentPage, emps, map);
//		return "index_emp";
//	}
	
	@RequestMapping("/search_strict")
	public String queryEmpStrict(String pageSize, String currentPage, HttpServletRequest request, Map map) {

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
		
		Map<Integer, String> conditions = new TreeMap<Integer, String>();
		String chkAlias;
		List<Condition> conditionList = new ArrayList<Condition>();
		Condition condition = new Condition();
		
		for(int i = 1; i < 49; i++) {
			chkAlias = request.getParameter("chkAlias_" + i);
			if(chkAlias != null) {
				conditions.put(i, chkAlias);
			}
			chkAlias = null;
		}
		for(Map.Entry<Integer, String> entry: conditions.entrySet()) {
			
			int i =  entry.getKey();
			condition.setFieldName(entry.getValue());
			condition.setParameter1(request.getParameter("txtv1_" + i));
			condition.setParameter2(request.getParameter("txtv2_" + i));
			condition.setSymbol(request.getParameter("cboop1_" + i));
			
			conditionList.add(condition);
			condition = new Condition();
			
		}
		
		List<Emp> emps = empservice.queryEmpStrict(conditionList);
		map.put("EMPS", emps);
		map.put("PAGING", new Paging(emps.size(), iCurrentPage, iPageSize));
		
		return "index_emp";
	}
	
	@RequestMapping("/search_condition")
	public String queryEmpCondition(HttpServletRequest request, Map map) {
		
		return "condition_emp";
	}
}
