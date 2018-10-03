package com.pm.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.pm.model.Recruitment_planSelectRequirement;

@RequestMapping(value="/recruitment")
@Controller
public class Recruitment_planCtrl {

	@Resource(name="recruitment_planService")
	private com.pm.service.Recruitment_planService recruitment_planService;
	
	@RequestMapping(value="/index")
	public void getRecruitment_plan(Recruitment_planSelectRequirement recruitment_planSelectRequirement,HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
//		request.setAttribute("recruitments",recruitment_planService.getRecruitment_plans(recruitment_planSelectRequirement));
		request.setAttribute("recruitment",recruitment_planService.getRecruitment_plan("10000"));
		request.getRequestDispatcher("/WEB-INF/jsp/recruitment/recruitment.jsp").forward(request, response);
		
	}
}
