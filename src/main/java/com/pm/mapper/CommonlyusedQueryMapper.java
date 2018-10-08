package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.CombinationQuery;
import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Emp;
import com.pm.model.Good;
import com.pm.model.Pager;


@Repository(value="commonlyusedQuery")
public interface CommonlyusedQueryMapper {
	public List<DrivinglicenseQuery> queryDriver();//查询拥有驾驶证的人
	public List<ContractQuery> queryContract();//查询合同到期人员
	public int getRecords();//查询拥有驾驶证的总记录条数
	public List<DrivinglicenseQuery> listPager(Pager<DrivinglicenseQuery> pager);//分页查找拥有驾驶证的人
	public int getContractQueryRecords();//查询合同到期的人员的总记录数
	public List<ContractQuery> listContractQueryPager(Pager<ContractQuery> pager);//分页查找合同到期人员
	public List<CombinationQuery> combinationQuery(Emp emp);//员工信息组合查询
}
