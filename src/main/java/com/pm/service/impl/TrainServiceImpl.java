package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pm.mapper.TrainMapper;
import com.pm.model.Pager;
import com.pm.model.Train;
import com.pm.service.TrainService;

@Service(value = "trainServiceImpl")
public class TrainServiceImpl implements TrainService {

	@Resource(name = "trainMapper")
	private TrainMapper trainMapper;

	@Override
	public List<Train> listAll() {
		return trainMapper.listAll();
	}

	@Override
	public List<Train> listType(String train_type) {
		return trainMapper.listType(train_type);
	}

	@Override
	public Train get(String train_plan_name) {
		return trainMapper.get(train_plan_name);
	}

	@Override
	public List<Train> listName(String train_name) {
		return trainMapper.listName(train_name);
	}

	@Override
	public int insertTrain(Train train) {
		return trainMapper.insertTrain(train);
	}

	@Override
	public int deleteTrain(String train_plan_name) {
		return trainMapper.deleteTrain(train_plan_name);
	}

	@Override
	public int updateTrain(Train train_plan_name) {
		return trainMapper.updateTrain(train_plan_name);
	}

	@Override
	public List<Train> listPager(Pager<Train> pager) {
		return trainMapper.listPager(pager);
	}

	@Override
	public int getRecords() {
		return trainMapper.getRecords();
	}

}
