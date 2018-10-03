package com.pm.mapper;

import java.util.List;

import com.pm.model.Agreements;
import com.pm.model.AgreementsSelectRequirement;

public interface AgreementsMapper {

	public Agreements getAgreement(String agreementno);

	public List<Agreements> getAgreements(AgreementsSelectRequirement agreementsSelectRequirement);

	public void updateAgreement(Agreements agreements);

	public void deleteAgreement(String agreementno);

	public void insertAgreement(Agreements agreements);

}
