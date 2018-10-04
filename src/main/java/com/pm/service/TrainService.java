package com.pm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pm.model.Train;
import com.pm.model.Pager;

public interface TrainService {

	public List<Train> listAll();// 查找所有培训

	public List<Train> listType(String train_type);// 查找某种类型培训

	public Train get(String train_plan_name);// 通过计划名称查找某个培训

	public List<Train> listName(String train_sponsoring_dept);// 通过主办部门查找培训

	public int insertTrain(Train train);// 插入新培训

	public int deleteTrain(String train_plan_name);// 删除某个培训

	public int updateTrain(Train train_plan_name);// 修改培训信息

	public int getCount(String train_plan_name);// 查看培训余量

	public List<Train> listPager(Pager<Train> pager);// 分页查找培训

	public int getRecords();// 查询总记录条数

}
