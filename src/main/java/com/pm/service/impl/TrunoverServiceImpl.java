package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pm.mapper.TurnoverMapper;
import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Transfer;
import com.pm.model.Turnover;
import com.pm.service.TurnoverService;

@Repository(value="turnoverService")
public class TrunoverServiceImpl implements TurnoverService {
	@Resource(name="turnoverMapper")
	private TurnoverMapper turnoverMapper;
	
	
	@Override
	public List<Turnover> getTurnoversByPage(Pager pager) {
		// TODO Auto-generated method stub
		return turnoverMapper.getTurnoversByPage(pager);
	}


	@Override
	public int getRecords() {
		// TODO Auto-generated method stub
		return turnoverMapper.getRecords();
	}


	@Override
	public Emp queryRecords(int empId) {
		// TODO Auto-generated method stub
		return turnoverMapper.queryRecords(empId);
	}


	@Override
	public Turnover queryByEmpId(int empId) {
		// TODO Auto-generated method stub
		return turnoverMapper.queryByEmpId(empId);
	}


	@Override
	public int insertRecords(Turnover turnover) {
		// TODO Auto-generated method stub
		return turnoverMapper.insertRecords(turnover);
	}


	@Override
	public int removeEmp(Turnover turnover) {
		// TODO Auto-generated method stub
		return turnoverMapper.removeEmp(turnover);
	}


	@Override
	public Turnover queryByTurnoverId(int turnoverId) {
		// TODO Auto-generated method stub
		return turnoverMapper.queryByTurnoverId(turnoverId);
	}


	@Override
	public int updateTurnover(Turnover turnover) {
		// TODO Auto-generated method stub
		return turnoverMapper.updateTurnover(turnover);
	}


	@Override
	public int removeRecords(int turnoverId) {
		// TODO Auto-generated method stub
		return turnoverMapper.removeRecords(turnoverId);
	}



}
