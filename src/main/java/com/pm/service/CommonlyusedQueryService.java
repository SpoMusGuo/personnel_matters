package com.pm.service;

import java.util.List;

import com.pm.model.CombinationQuery;
import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Emp;
import com.pm.model.Good;
import com.pm.model.Pager;

public interface CommonlyusedQueryService {
	public List<DrivinglicenseQuery> queryDriver();
	public List<ContractQuery> queryContract();
	public int getRecords();//查询拥有驾驶证的员工的总记录条数
	public List<DrivinglicenseQuery> listPager(Pager<DrivinglicenseQuery> pager);//分页查找拥有驾驶证的员工
	public int getContractQueryRecords();//查询合同到期的人员的总记录数
	public List<ContractQuery> listContractQueryPager(Pager<ContractQuery> pager);//分页查找合同到期人员
	public List<CombinationQuery> combinationQuery(Emp emp);//员工信息组合查询
}
