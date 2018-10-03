package com.pm.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Recruitment_plan;
import com.pm.model.Recruitment_planSelectRequirement;

@RequestMapping(value="/recruitment")
@Controller
public class Recruitment_planCtrl {

	private static Recruitment_planSelectRequirement rmpsr;
	
	@Resource(name="recruitment_planService")
	private com.pm.service.Recruitment_planService recruitment_planService;
	
	//招聘主页
	@RequestMapping(value="/index")
	public void getRecruitment_plans(Recruitment_planSelectRequirement recruitment_planSelectRequirement,HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		rmpsr = recruitment_planSelectRequirement;
		request.setAttribute("recruitments",recruitment_planService.getRecruitment_plans(recruitment_planSelectRequirement));
		request.getRequestDispatcher("/WEB-INF/jsp/recruitment/recruitment.jsp").forward(request, response);
	}
	
	//更新招聘计划
	@RequestMapping(value="/update")
	public void updateRecruitment(Recruitment_plan recruitment_plan,HttpServletRequest request, HttpServletResponse response) throws Exception {
		String result = recruitment_planService.updateRecruitment_plan(recruitment_plan);
		if (result.equals("false")) {
			request.setAttribute("result", result);
			getRecruitment(recruitment_plan.getPlanno(), request, response);
		} else {
			getRecruitment_plans(rmpsr, request, response);
		}
	}
	
	//详细计划信息
	@RequestMapping(value="details")
	public void getRecruitment(String planno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("recruitment_plan", recruitment_planService.getRecruitment_plan(planno));
		request.getRequestDispatcher("/WEB-INF/jsp/recruitment/details.jsp").forward(request, response);
	}
	
	//解锁招聘计划
	@RequestMapping(value="/lock")
	public void updateRecruitmentLock(String planno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		recruitment_planService.updateRecruitment_planLock(planno);
		getRecruitment_plans(rmpsr, request, response);
	}
	
	//删除招聘计划
	@RequestMapping(value="delete")
	public void deleteRecruitment(String planno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		recruitment_planService.deleteRecruitment_plan(planno);
		getRecruitment_plans(rmpsr, request, response);
	}
	
	
	//新建招聘计划
	@RequestMapping(value="/add")
	public void addRecuritment(Recruitment_plan recruitment_plan,HttpServletRequest request, HttpServletResponse response) throws Exception {
		recruitment_planService.inertRecruitment_plan(recruitment_plan);
		getRecruitment_plans(rmpsr, request, response);
	}
}
