package com.pm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.pm.model.Agreements;

public interface AgreementsMapper {
	@Select(value = { "select * from agreements where agreementno = #{agreementno}" })
	public Agreements getOne(String agreementno);
	
	public List<Agreements> getAgreements();
}
