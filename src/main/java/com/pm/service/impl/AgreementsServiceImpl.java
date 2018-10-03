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
	public void updateAgreement(Agreements agreements) {
		agreementsMapper.updateAgreement(agreements);
	}

	@Override
	public void deleteAgreement(String agreementno) {
		agreementsMapper.deleteAgreement(agreementno);
	}

	@Override
	public void insertAgreement(Agreements agreements) {
		agreementsMapper.insertAgreement(agreements);
		
	}
	
	
	
}
