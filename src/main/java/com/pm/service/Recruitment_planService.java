package com.pm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pm.model.Recruitment_plan;
import com.pm.model.Recruitment_planSelectRequirement;

public interface Recruitment_planService {
	
	public Recruitment_plan getRecruitment_plan(String planno);
	
	public List<Recruitment_plan> getRecruitment_plans(Recruitment_planSelectRequirement recruitment_planSelectRequirement);

	public String updateRecruitment_plan(Recruitment_plan recruitment_plan);
	
	public String deleteRecruitment_plan(String planno);
	
	public void inertRecruitment_plan(Recruitment_plan recruitment_plan);
	
	public void updateRecruitment_planLock(String planno);
	
}
