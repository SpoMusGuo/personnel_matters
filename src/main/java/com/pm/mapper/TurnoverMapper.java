package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Turnover;

@Repository(value="turnoverMapper")
public interface TurnoverMapper {
	public List<Turnover> getTurnoversByPage(Pager pager);
	public int getRecords();
	public Emp queryRecords(int empId);
	public Turnover queryByEmpId(int empId); 
	public int insertRecords(Turnover turnover);
	public int removeEmp(Turnover turnover);
	public Turnover queryByTurnoverId(int turnoverId);
	public int updateTurnover(Turnover turnover);
	public int removeRecords(int turnoverId);
}
