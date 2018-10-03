package com.pm.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.AgreementsSelectRequirement;

@RequestMapping(value="/agreements")
@Controller
public class AgreementsCtrl {
	
//	@Resource(name="agreementsMapper")
	private com.pm.service.AgreementsService agreementsService;
	
	@RequestMapping(value="/index")
	public void getAgreements(String SelectRequirement, HttpServletRequest request, HttpServletResponse response) throws Exception {
		AgreementsSelectRequirement agreementsSelectRequirement = new AgreementsSelectRequirement();
		
		
		
		request.setAttribute("agreements", agreementsService.getAgreements(agreementsSelectRequirement));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/agreements.jsp").forward(request, response);
	}
	
}
