package com.pm.service;
/**
 * 员工调动表的业务层
 * @author huangyiwen
 *
 */


import java.util.List;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Transfer;

public interface TransferService {

	public List<Transfer> getTransfersByPage(Pager pager);//查询所在页的记录
	public int getRecords();//查询总记录条数
	public Emp queryRecords(int empId);//查询是否有此员工
	public int insertRecords(Transfer transfer);//新增记录
	public Transfer queryByMobilityId(int mobilityId);//根据调动标号查询记录
	public int updateRecords(Transfer transfer);//修改记录
	public int removeRecords(int mobilityId);//删除记录
	public int updateEmp(Transfer transfer); //更新员工表
	public Transfer queryByEmpId(int empId); //  查询调动表中是否存在该员工的信息
}
