package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.pm.mapper.TransferMapper;
import com.pm.model.Pager;
import com.pm.model.Transfer;
import com.pm.service.TransferService;

@Repository(value="transferService")
public class TransferServiceImpl implements TransferService {
	@Resource(name="transferMapper")
	private TransferMapper transferMapper;
	
	@Override
	public List<Transfer> getTransfersByPage(Pager pager) {
		// TODO Auto-generated method stub
		return transferMapper.getTransfersByPage(pager);
	}

	@Override
	public int getRecords() {
		// TODO Auto-generated method stub
		return transferMapper.getRecords();
	}

}
