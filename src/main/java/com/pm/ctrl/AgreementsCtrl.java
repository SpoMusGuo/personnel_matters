package com.pm.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Agreements;
import com.pm.model.AgreementsSelectRequirement;

@RequestMapping(value="/agreements")
@Controller
public class AgreementsCtrl {
	private AgreementsSelectRequirement agreementsSelectRequirement;
	
	@Resource(name="agreementsService")
	private com.pm.service.AgreementsService agreementsService;
	
	//合同主页
	@RequestMapping(value="/index")
	public void getAgreements(AgreementsSelectRequirement agreementsSelectRequirement, HttpServletRequest request, HttpServletResponse response) throws Exception {
		this.agreementsSelectRequirement = agreementsSelectRequirement;
		System.out.println(agreementsSelectRequirement);
		System.out.println(agreementsService.getAgreements(agreementsSelectRequirement));
		request.setAttribute("agreements", agreementsService.getAgreements(agreementsSelectRequirement));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/agreements.jsp").forward(request, response);
	}
	
	//更新合同信息
	@RequestMapping(value="/update")
	public void updageAgreement(Agreements agreements, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String result = agreementsService.updateAgreement(agreements);
		if (result.equals("false")) {
			request.setAttribute("result", result);
			getAgreement(agreements.getAgreementno(), request, response);
		} else {
			getAgreements(agreementsSelectRequirement, request, response);
		}
	}
	
	//详细信息
	@RequestMapping(value="/details")
	public void getAgreement(String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("agreement", agreementsService.getAgreement(agreementno));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/details.jsp").forward(request, response);
	}
	
	//解锁合同信息
	@RequestMapping(value="/lock")
	public void updateAgreementLock(String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.updateAgreementLock(agreementno);
		getAgreements(agreementsSelectRequirement, request, response);
	}
	
	//删除合同信息
	@RequestMapping(value="/delete")
	public void deleteAgreement(String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.deleteAgreement(agreementno);
		getAgreements(agreementsSelectRequirement, request, response);
	}
	
	//新建合同信息
	@RequestMapping(value="/add")
	public void addAgreement(Agreements agreements, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.insertAgreement(agreements);
		getAgreements(agreementsSelectRequirement, request, response);
	}
}
