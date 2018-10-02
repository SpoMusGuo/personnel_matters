package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.pm.model.Recruitment_plan;
import com.pm.model.Recruitment_planSelectRequirement;
import com.pm.service.Recruitment_planService;

public class Recruitment_planServiceImpl implements Recruitment_planService {

	@Resource(name="recruitment_planMapper")
	private com.pm.mapper.Recruitment_planMapper recruitment_planMapper;
	
	@Override
	public Recruitment_plan getRecruitment_plan(String planno) {
		return recruitment_planMapper.getRecruitment_plan(planno);
	}

	@Override
	public List<Recruitment_plan> getRecruitment_plans(Recruitment_planSelectRequirement recruitment_planSelectRequirement) {
		return getRecruitment_plans(recruitment_planSelectRequirement);
	}

	@Override
	public void updateRecruitment_plan(Recruitment_plan recruitment_plan) {
		recruitment_planMapper.updateRecruitment_plan(recruitment_plan);
	}

	@Override
	public void deleteRecruitment_plan(String planno) {
		recruitment_planMapper.deleteRecruitment_plan(planno);
	}

	@Override
	public void inertRecruitment_plan(Recruitment_plan recruitment_plan) {
		recruitment_planMapper.inertRecruitment_plan(recruitment_plan);
	}

}
