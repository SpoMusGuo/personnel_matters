package com.pm.ctrl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pm.model.CombinationQuery;
import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Emp;
import com.pm.model.Good;
import com.pm.model.Pager;

@RequestMapping(value="/commonlyusedquery")
@Controller
public class CommonlyusedQueryCtrl {
	@Resource(name="commonlyusedQueryService")
	private com.pm.service.CommonlyusedQueryService commonlyusedQueryService;
	//拥有驾驶证的人员的查询方法
	@RequestMapping("/driving/{currentPageindex}")
	public ModelAndView commonlyquery(ModelAndView mv,@PathVariable(value = "currentPageindex") Integer currentPageindex) {
		Pager<DrivinglicenseQuery> pager = new Pager<DrivinglicenseQuery>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 5;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=commonlyusedQueryService.getRecords();
		int pagecount=(int)Math.ceil((double)records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(commonlyusedQueryService.listPager(pager));
		mv.addObject("pager", pager);
		mv.addObject("type", "list");
		mv.setViewName("drivinglicense");
		return mv;
	}
	//合同到期或者即将到期的人员查询方法
	@RequestMapping("/contract/{currentPageindex}")
	public ModelAndView contractQuery(ModelAndView mv,@PathVariable(value = "currentPageindex") Integer currentPageindex) {
		Pager<ContractQuery> pager = new Pager<ContractQuery>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 5;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=commonlyusedQueryService.getContractQueryRecords();
		int pagecount=(int)Math.ceil((double)records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(commonlyusedQueryService.listContractQueryPager(pager));
		mv.addObject("pager", pager);
		mv.addObject("type", "list");
		mv.setViewName("contract");
		return mv;
	}
	@RequestMapping(value="/combination")
	public ModelAndView combinationQuery(ModelAndView mv,Emp emp) {
		if(emp.getEmpSex()!=null || emp.getEmpDepartment()!=null || emp.getEmpAge()!=0 || emp.getEmpEducationSt()!=null || emp.getEmpMarriage()!=null) {
			List<CombinationQuery> combition = commonlyusedQueryService.combinationQuery(emp);
			mv.addObject("combition", combition);
		}
		mv.setViewName("combinationquery");
		return mv;
	}

	@RequestMapping(value="/href")
	public void getNullAgreement(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("/WEB-INF/jsp/condition_terms.jsp").forward(request, response);
	}
}
