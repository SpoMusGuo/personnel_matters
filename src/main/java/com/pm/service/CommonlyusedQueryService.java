package com.pm.service;

import java.util.List;

import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Good;
import com.pm.model.Pager;

public interface CommonlyusedQueryService {
	public List<DrivinglicenseQuery> queryDriver();
	public List<ContractQuery> queryContract();
	public int getRecords();//查询总记录条数
	public List<DrivinglicenseQuery> listPager(Pager<DrivinglicenseQuery> pager);//分页查找物品
}
