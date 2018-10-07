package com.pm.service;
/**
 * 员工离职表
 * @author huangyiwen
 *
 */

import java.util.List;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Turnover;

public interface TurnoverService {

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
