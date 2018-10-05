package com.pm.ctrl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Agreements;
import com.pm.model.AgreementsSelectRequirement;

@RequestMapping(value="/agreements")
@Controller
public class AgreementsCtrl {
	private static AgreementsSelectRequirement agmsr;
	
	@Resource(name="agreementsService")
	private com.pm.service.AgreementsService agreementsService;
	
	//合同主页
	@RequestMapping(value="/index")
	public void getAgreements(AgreementsSelectRequirement agreementsSelectRequirement, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agmsr = agreementsSelectRequirement;
		System.out.println(agreementsSelectRequirement);
		System.out.println(agreementsService.getAgreements(agreementsSelectRequirement));
		List<Agreements> agreements  = agreementsService.getAgreements(agreementsSelectRequirement);
		List<Agreements> newAgreements = null ;
		request.setAttribute("length", agreements.size());
		int i = (int) Math.ceil((double)agreements.size()/agmsr.getPageCount());
		request.setAttribute("pagenum", i);
		if((agmsr.getStartIndex()+1)*agmsr.getPageCount() <=agreements.size()){
			newAgreements = agreements.subList(agmsr.getStartIndex()*agmsr.getPageCount(), (agmsr.getStartIndex()+1)*agmsr.getPageCount());
			request.setAttribute("endCount", (agmsr.getStartIndex()+1)*agmsr.getPageCount());
		}else {
			if(agmsr.getStartIndex()*agmsr.getPageCount() <=agreements.size()){
				newAgreements = agreements.subList(agmsr.getStartIndex()*agmsr.getPageCount(), agreements.size());
				request.setAttribute("endCount", agreements.size());
			}
		}
		request.setAttribute("startCount", agmsr.getStartIndex()*agmsr.getPageCount()+1);
		request.setAttribute("startIndex", agmsr.getStartIndex()+1);
		request.setAttribute("agreements", newAgreements);
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/agreements.jsp").forward(request, response);
	}
	
	//合同主页
	@RequestMapping(value="/index/{page}")
	public void getNextAgreements(@PathVariable(value="page")int page, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agmsr.setStartIndex(page-1);
		getAgreements(agmsr, request, response);
	}
		
	
	//更新合同信息
	@RequestMapping(value="/update")
	public void updageAgreement(Agreements agreements, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String result = agreementsService.updateAgreement(agreements);
		if (result.equals("false")) {
			request.setAttribute("result", result);
			getAgreement(agreements.getAgreementno(), request, response);
		} else {
			getAgreements(agmsr, request, response);
		}
	}
	
	//详细信息
	@RequestMapping(value="/details")
	public void getAgreement(String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("agreement", agreementsService.getAgreement(agreementno));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/details.jsp").forward(request, response);
	}
	
	//上锁合同信息
	@RequestMapping(value="/lock/{agreementno}")
	public void updateAgreementLock(@PathVariable(value="agreementno")String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.updateAgreementLock(agreementno);
		getAgreements(agmsr, request, response);
	}
	
	//解锁合同信息
		@RequestMapping(value="/unlock/{agreementno}")
		public void updateAgreementUnLock(@PathVariable(value="agreementno")String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
			agreementsService.updateAgreementUnLock(agreementno);
			getAgreements(agmsr, request, response);
		}
	
	//删除合同信息
	@RequestMapping(value="/delete")
	public void deleteAgreement(String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.deleteAgreement(agreementno);
		getAgreements(agmsr, request, response);
	}
	
	//新建合同信息
	@RequestMapping(value="/add")
	public void addAgreement(Agreements agreements, HttpServletRequest request, HttpServletResponse response) throws Exception {
		agreementsService.insertAgreement(agreements);
		getAgreements(agmsr, request, response);
	}
}
