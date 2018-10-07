package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Good;
import com.pm.model.Pager;


@Repository(value="commonlyusedQuery")
public interface CommonlyusedQueryMapper {
	public List<DrivinglicenseQuery> queryDriver();//查询拥有驾驶证的人
	public List<ContractQuery> queryContract();//查询合同到期人员
	public int getRecords();//查询总记录条数
	public List<DrivinglicenseQuery> listPager(Pager<DrivinglicenseQuery> pager);//分页查找拥有驾驶证的人
}
