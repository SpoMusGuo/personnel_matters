package com.pm.service;
/**
 * 员工调动表的业务层
 * @author huangyiwen
 *
 */


import java.util.List;

import com.pm.model.Pager;
import com.pm.model.Transfer;

public interface TransferService {

	public List<Transfer> getTransfersByPage(Pager pager);//查询所在页的记录
	public int getRecords();//查询总记录条数
	
}
