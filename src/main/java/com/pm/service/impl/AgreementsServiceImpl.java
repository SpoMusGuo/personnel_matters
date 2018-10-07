package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pm.model.Agreements;
import com.pm.model.AgreementsSelectRequirement;
import com.pm.service.AgreementsService;
@Service(value="agreementsService")
public class AgreementsServiceImpl implements AgreementsService {

	@Resource(name="agreementsMapper")
	private com.pm.mapper.AgreementsMapper agreementsMapper;
	
	@Override 
	public Agreements getAgreement(String agreementno) {
		return agreementsMapper.getAgreement(agreementno);
	}

	@Override
	public List<Agreements> getAgreements(AgreementsSelectRequirement agreementsSelectRequirement) {
		return agreementsMapper.getAgreements(agreementsSelectRequirement);
	}

	@Override
	public String updateAgreement(Agreements agreements) {
		Agreements agreements2 =  agreementsMapper.getAgreement(agreements.getAgreementno());
		if (agreements2.getStatus().equals("未锁定")) {
			agreementsMapper.updateAgreement(agreements);
			return "true";
		} else {
			return "false";
		}
	}

	@Override
	public String deleteAgreement(String agreementno) {
		Agreements agreements2 =  agreementsMapper.getAgreement(agreementno);
		if (agreements2.getStatus().equals("未锁定")) {
			agreementsMapper.deleteAgreement(agreementno);
			return "true";
		}else {
			return "false";
		}
	}

	@Override
	public void insertAgreement(Agreements agreements) {
		agreementsMapper.insertAgreement(agreements);
	}

	@Override
	public void updateAgreementLock(String agreementno) {
		agreementsMapper.updateAgreementLock(agreementno);
	}

	@Override
	public void updateAgreementUnLock(String agreementno) {
		agreementsMapper.updateAgreementUnLock(agreementno);
	}
}
