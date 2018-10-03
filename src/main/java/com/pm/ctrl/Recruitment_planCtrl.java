package com.pm.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Recruitment_planSelectRequirement;

@RequestMapping(value="/recruitment_plan")
@Controller
public class Recruitment_planCtrl {

//	@Resource(name="recruitment_planMapper")
	private com.pm.mapper.Recruitment_planMapper recruitment_planMapper;
	
	@RequestMapping(value="/index")
	public void getRecruitment_plan(Recruitment_planSelectRequirement recruitment_planSelectRequirement,HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		request.setAttribute("recruitment_plan",recruitment_planMapper.getRecruitment_plans(recruitment_planSelectRequirement));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/recruitment_plan.jsp").forward(request, response);
		
	}
}
