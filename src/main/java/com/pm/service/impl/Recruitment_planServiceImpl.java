package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pm.model.Recruitment_plan;
import com.pm.model.Recruitment_planSelectRequirement;
import com.pm.service.Recruitment_planService;
@Service(value="recruitment_planService")
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
	public String updateRecruitment_plan(Recruitment_plan recruitment_plan) {
		Recruitment_plan recruitment_plan2 =  recruitment_planMapper.getRecruitment_plan(recruitment_plan.getPlanno());
		if (recruitment_plan2.getStatus().equals("未锁定")) {
			recruitment_planMapper.updateRecruitment_plan(recruitment_plan);
			return "true";
		} else {
			return "false";
		}
	}

	@Override
	public String deleteRecruitment_plan(String planno) {
		Recruitment_plan recruitment_plan2 =  recruitment_planMapper.getRecruitment_plan(planno);
		if (recruitment_plan2.getStatus().equals("未锁定")) {
			recruitment_planMapper.deleteRecruitment_plan(planno);
			return "true";
		} else {
			return "false";
		}
	}

	@Override
	public void inertRecruitment_plan(Recruitment_plan recruitment_plan) {
		recruitment_planMapper.inertRecruitment_plan(recruitment_plan);
	}

	@Override
	public void updateRecruitment_planLock(String planno) {
		recruitment_planMapper.updateRecruitment_planLock(planno);
	}

}
