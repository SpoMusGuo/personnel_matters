package com.pm.ctrl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	
	/**
	 * 	分页方法
	 * @param pageSize
	 * @param currentPage
	 * @param emps
	 * @return
	 */
	public Paging getPaging(String pageSize, String currentPage, List<Emp> emps) {

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
		
		return new Paging(emps.size(), iCurrentPage, iPageSize);
	}

	
	/**
	 * 	查询所有员工信息
	 * @param pageSize
	 * @param currentPage
	 * @param keyword
	 * @param map
	 * @return
	 */
	@RequestMapping("/index_emp")
	public String queryEmpList(String pageSize, String currentPage, String keyword, Map map) {
		
		List<Emp> emps;
		//	是否模糊查询
		if(keyword == null || keyword.equals("")) {
			emps = empservice.queryEmpList();
		} else {
			emps = empservice.queryEmpVague(keyword);
		}
		
		map.put("EMPS", emps);
		map.put("PAGING", this.getPaging(pageSize, currentPage, emps));
		map.put("KEYWORD", keyword);
		
		return "personnel/index_emp";
	}
	
	
	/**
	 * 	条件查询
	 * @param pageSize
	 * @param currentPage
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/search_strict")
	public String queryEmpStrict(String pageSize, String currentPage, HttpServletRequest request, Map map) {

		HttpSession session = request.getSession();
		List<Condition> conditionList;
		
		//	判断是跳转页（分页）还是重新进行条件查找
		if(request.getParameter("SEARCH") == null) {
			conditionList = (List<Condition>) session.getAttribute("CONDI");
			
		}else {
			Map<Integer, String> conditions = new TreeMap<Integer, String>();
			String chkAlias;
			
			//	获取前端选中的条件
			for(int i = 1; i < 49; i++) {
				chkAlias = request.getParameter("chkAlias_" + i);
				if(chkAlias != null) {
					conditions.put(i, chkAlias);
				}
				chkAlias = null;
			}
			
			conditionList = new ArrayList<Condition>();
			Condition condition = new Condition();
				
			//	获取条件的具体内容
			for(Map.Entry<Integer, String> entry: conditions.entrySet()) {
				int i =  entry.getKey();
				condition.setFieldName(entry.getValue());
				condition.setParameter1(request.getParameter("txtv1_" + i));
				condition.setParameter2(request.getParameter("txtv2_" + i));
				condition.setSymbol(request.getParameter("cboop1_" + i));
				
				conditionList.add(condition);
				condition = new Condition();
			}
			
			session.setAttribute("CONDI", conditionList);
		}
		
		List<Emp> emps = empservice.queryEmpStrict(conditionList);
		map.put("EMPS", emps);
		map.put("PAGING", this.getPaging(pageSize, currentPage, emps));
		map.put("SEARCH", "1");		//	告诉前端这是条件查询的结果（使用分页时需要知道）
		
		return "personnel/index_emp";
	}
	
	
	/**
	 * 	打开条件查询页面
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/search_condition")
	public String queryEmpCondition(HttpServletRequest request, Map map) {
		
		//	返回session保存的条件查询记录
		HttpSession session = request.getSession();
		map.put("CONDI", session.getAttribute("CONDI"));
		
		return "personnel/condition_emp";
	}
}
