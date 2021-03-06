package com.pm.service;

import java.util.List;

import com.pm.model.Agreements;
import com.pm.model.AgreementsSelectRequirement;

public interface AgreementsService {

	public Agreements getAgreement(String agreementno);
	
	public List<Agreements> getAgreements(AgreementsSelectRequirement agreementsSelectRequirement);
	
	public String updateAgreement(Agreements agreements);
	
	public String deleteAgreement(String agreementno);
	
	public void insertAgreement(Agreements agreements);
	
	public void updateAgreementLock(String agreementno);

	public void updateAgreementUnLock(String agreementno);
}
