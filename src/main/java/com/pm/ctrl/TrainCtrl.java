package com.pm.ctrl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Paging;
import com.pm.model.Train;
import com.pm.service.EmpService;
import com.pm.service.TrainService;

@Controller(value = "trainCtrl")
public class TrainCtrl {
	
	@Autowired
	private EmpService empservice;
	@RequestMapping("/index_train")
	public String queryEmpList(String pageSize, String currentPage, Map map) {

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
		List<Emp> emps = empservice.queryEmpList();
		
		map.put("EMPS", emps);
		map.put("PAGING", new Paging(emps.size(), iCurrentPage, iPageSize));
		return "train/index_train";
	}

}
