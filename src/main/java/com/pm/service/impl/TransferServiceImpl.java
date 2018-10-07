package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.pm.mapper.TransferMapper;
import com.pm.model.Emp;
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

	@Override
	public int insertRecords(Transfer transfer) {
		// TODO Auto-generated method stub
		return transferMapper.insertRecords(transfer);
	}

	@Override
	public Transfer queryByMobilityId(int mobilityId) {
		// TODO Auto-generated method stub
		return transferMapper.queryByMobilityId(mobilityId);
	}

	@Override
	public int updateRecords(Transfer transfer) {
		// TODO Auto-generated method stub
		return transferMapper.updateRecords(transfer);
	}

	@Override
	public int removeRecords(int mobilityId) {
		// TODO Auto-generated method stub
		return transferMapper.removeRecords(mobilityId);
	}

	@Override
	public Emp queryRecords(int empId) {
		// TODO Auto-generated method stub
		return transferMapper.queryRecords(empId);
	}

	@Override
	public int updateEmp(Transfer transfer) {
		// TODO Auto-generated method stub
		return transferMapper.updateEmp(transfer);
	}

	@Override
	public Transfer queryByEmpId(int empId) {
		// TODO Auto-generated method stub
		return transferMapper.queryByEmpId(empId);
	}

	

}
