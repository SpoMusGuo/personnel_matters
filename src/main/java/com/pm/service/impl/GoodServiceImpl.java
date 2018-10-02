package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.mapper.GoodMapper;
import com.pm.model.Good;
import com.pm.model.Pager;
import com.pm.service.GoodService;
@Service(value="goodService")
public class GoodServiceImpl implements GoodService {
	@Resource(name="goodMapper")
	private GoodMapper mapper;
	@Override
	public List<Good> listAll() {
		// TODO Auto-generated method stub
		return mapper.listAll();
	}

	@Override
	public List<Good> listType(String good_type) {
		// TODO Auto-generated method stub
		return mapper.listType(good_type);
	}

	@Override
	public Good get(String good_id) {
		// TODO Auto-generated method stub
		return mapper.get(good_id);
	}

	@Override
	public List<Good> listName(String good_name) {
		// TODO Auto-generated method stub
		return mapper.listName(good_name);
	}

	@Override
	public int insertGood(Good good) {
		// TODO Auto-generated method stub
		return mapper.insertGood(good);
	}

	@Override
	public int deleteGood(String good_id) {
		// TODO Auto-generated method stub
		return mapper.deleteGood(good_id);
	}

	@Override
	public int updateGood(Good good) {
		// TODO Auto-generated method stub
		return mapper.updateGood(good);
	}

	@Override
	public int getCount(String good_id) {
		// TODO Auto-generated method stub
		return mapper.getCount(good_id);
	}

	@Override
	public List<Good> listPager(Pager<Good> pager) {
		// TODO Auto-generated method stub
		return mapper.listPager(pager);
	}

}
