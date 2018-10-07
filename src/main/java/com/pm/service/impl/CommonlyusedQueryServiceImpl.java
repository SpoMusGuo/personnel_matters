package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pm.model.CombinationQuery;
import com.pm.model.ContractQuery;
import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.service.CommonlyusedQueryService;
@Service(value="commonlyusedQueryService")
public class CommonlyusedQueryServiceImpl implements CommonlyusedQueryService {
	@Resource(name="commonlyusedQuery")
	private com.pm.mapper.CommonlyusedQueryMapper commonlyusedQueryMapper;
	@Override
	public List<DrivinglicenseQuery> queryDriver() {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.queryDriver();
	}
	@Override
	public List<ContractQuery> queryContract() {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.queryContract();
	}
	@Override
	public int getRecords() {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.getRecords();
	}
	@Override
	public List<DrivinglicenseQuery> listPager(Pager<DrivinglicenseQuery> pager) {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.listPager(pager);
	}
	@Override
	public int getContractQueryRecords() {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.getContractQueryRecords();
	}
	@Override
	public List<ContractQuery> listContractQueryPager(Pager<ContractQuery> pager) {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.listContractQueryPager(pager);
	}
	@Override
	public List<CombinationQuery> combinationQuery(Emp emp) {
		// TODO Auto-generated method stub
		return commonlyusedQueryMapper.combinationQuery(emp);
	}

}
