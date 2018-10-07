package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Transfer;

@Repository(value="transferMapper")
public interface TransferMapper {
	public List<Transfer> getTransfersByPage(Pager pager);
	public int getRecords();
	public Emp queryRecords(int empId);
	public int insertRecords(Transfer transfer);
	public Transfer queryByMobilityId(int mobilityId);
	public int updateRecords(Transfer transfer);
	public int removeRecords(int mobilityId);
	public int updateEmp(Transfer transfer);
	public Transfer queryByEmpId(int empId);
}
