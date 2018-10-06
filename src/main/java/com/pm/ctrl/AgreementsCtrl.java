package com.pm.ctrl;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Agreements;
import com.pm.model.Agreements2;
import com.pm.model.AgreementsSelectRequirement;
import com.pm.model.AgreementsSelectRequirement2;

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
	public void updageAgreement(Agreements2 agreements2, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Agreements agreements = new Agreements();
		BeanUtils.copyProperties(agreements2, agreements);
		SimpleDateFormat spdf = new SimpleDateFormat("yyyy-MM-dd");
		if (null != agreements2.getSigndata()) {
			agreements.setSigndata(new java.sql.Date(spdf.parse(agreements2.getSigndata()).getTime()));
		}
		if (null != agreements2.getProbation_begindata()) {
			agreements.setProbation_begindata(new java.sql.Date(spdf.parse(agreements2.getProbation_begindata()).getTime()));
		}
		if (null != agreements2.getProbation_overdata()) {
			agreements.setProbation_overdata(new java.sql.Date(spdf.parse(agreements2.getProbation_overdata()).getTime()));
		}
		if (null != agreements2.getStarttime()) {
			agreements.setStarttime(new java.sql.Date(spdf.parse(agreements2.getStarttime()).getTime()));
		}
		if (null != agreements2.getEndtime()) {
			agreements.setEndtime(new java.sql.Date(spdf.parse(agreements2.getEndtime()).getTime()));
		}

		String result = agreementsService.updateAgreement(agreements);
		if (result.equals("false")) {
			request.setAttribute("result", result);
			getAgreement(agreements2.getAgreementno(), request, response);
		} else {
			getAgreements(agmsr, request, response);
		}
	}
	
	//详细信息
	@RequestMapping(value="/details/{agreementno}")
	public void getAgreement(@PathVariable(value="agreementno")String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("agreement", agreementsService.getAgreement(agreementno));
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/details2.jsp").forward(request, response);
	}
	
	//插入信息
	@RequestMapping(value="/newagreement")
	public void getNullAgreement(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
	@RequestMapping(value="/delete/{agreementno}")
	public void deleteAgreement(@PathVariable(value="agreementno")String agreementno, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String deresult = agreementsService.deleteAgreement(agreementno);
		request.setAttribute("deresult", deresult);
		getAgreements(agmsr, request, response);
	}
	
	//新建合同信息
	@RequestMapping(value="/add")
	public void addAgreement(Agreements2 agreements2, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Agreements agreements = new Agreements();
		Agreements2 agreements1 = new Agreements2();
		BeanUtils.copyProperties(agreements2, agreements);
		SimpleDateFormat spdf = new SimpleDateFormat("yyyy-MM-dd");
		if (null != agreements2.getSigndata() && "".equals(agreements2.getSigndata())) {
			System.out.println(agreements2.getSigndata().equals(agreements1.getSigndata()));
			System.out.println(agreements2.getSigndata());
			System.out.println("1");
			agreements.setSigndata(new java.sql.Date(spdf.parse(agreements2.getSigndata()).getTime()));
		}else {
			
		}
		if (null != agreements2.getProbation_begindata()) {
			System.out.println("2");
			agreements.setProbation_begindata(new java.sql.Date(spdf.parse(agreements2.getProbation_begindata()).getTime()));
		}
		if (null != agreements2.getProbation_overdata()) {
			System.out.println("3");
			agreements.setProbation_overdata(new java.sql.Date(spdf.parse(agreements2.getProbation_overdata()).getTime()));
		}
		if (null != agreements2.getStarttime()) {
			System.out.println("4");
			agreements.setStarttime(new java.sql.Date(spdf.parse(agreements2.getStarttime()).getTime()));
		}
		if (null != agreements2.getEndtime()) {
			System.out.println("5");
			agreements.setEndtime(new java.sql.Date(spdf.parse(agreements2.getEndtime()).getTime()));
		}
		agreementsService.insertAgreement(agreements);
		getAgreements(agmsr, request, response);
	}
	
	//建立查询
	@RequestMapping(value="select")
	public void selectQuset(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("/WEB-INF/jsp/agreements/selectRequest.jsp").forward(request, response);
	}
	
	@RequestMapping(value="selectResult")
	public void test(AgreementsSelectRequirement2 amsrqm2,HttpServletRequest request, HttpServletResponse response) throws Exception {
		AgreementsSelectRequirement amsrqm = new AgreementsSelectRequirement();
		System.out.println(amsrqm2);
		BeanUtils.copyProperties(amsrqm2, amsrqm);
		SimpleDateFormat spdf = new SimpleDateFormat("yyyy-MM-dd");
		if (amsrqm.getEmp_id() != null) {
			System.out.println("不为空");
		}else {
			System.out.println("为空");
		}
		if("null".equals(amsrqm2.getSigndata())){
			amsrqm.setProbation_begindata(new java.sql.Date(spdf.parse(amsrqm2.getProbation_begindata()).getTime()));
			if("null".equals(amsrqm2.getSigndata1())) {
				amsrqm.setProbation_begindata1(new java.sql.Date(spdf.parse(amsrqm2.getProbation_begindata1()).getTime()));
			}
		}
		if("null".equals(amsrqm2.getProbation_begindata())){
			amsrqm.setProbation_begindata(new java.sql.Date(spdf.parse(amsrqm2.getProbation_begindata()).getTime()));
			if("null".equals(amsrqm2.getProbation_begindata1())){
				amsrqm.setProbation_begindata1(new java.sql.Date(spdf.parse(amsrqm2.getProbation_begindata1()).getTime()));
			}
		}
		if("null".equals(amsrqm2.getSprobation_overdata())){
			amsrqm.setProbation_overdata(new java.sql.Date(spdf.parse(amsrqm2.getProbation_overdata()).getTime()));
			if("null".equals(amsrqm2.getProbation_overdata1())){
				amsrqm.setProbation_overdata1(new java.sql.Date(spdf.parse(amsrqm2.getProbation_overdata1()).getTime()));
			}
		}
		if("null".equals(amsrqm2.getStarttime())){
			amsrqm.setStarttime(new java.sql.Date(spdf.parse(amsrqm2.getStarttime()).getTime()));
			if("null".equals(amsrqm2.getStarttime1())){
				amsrqm.setStarttime1(new java.sql.Date(spdf.parse(amsrqm2.getStarttime1()).getTime()));
			}
		}
		if("null".equals(amsrqm2.getEndtime())){
			amsrqm.setEndtime(new java.sql.Date(spdf.parse(amsrqm2.getEndtime()).getTime()));
			if("null".equals(amsrqm2.getEndtime1())){
				amsrqm.setEndtime1(new java.sql.Date(spdf.parse(amsrqm2.getEndtime1()).getTime()));
			}
		}
		getAgreements(amsrqm, request, response);
	}
}
