package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Pager;
import com.pm.model.Transfer;

@Repository(value="transferMapper")
public interface TransferMapper {
	public List<Transfer> getTransfersByPage(Pager pager);
	public int getRecords();
}
