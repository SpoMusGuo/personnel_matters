package com.pm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.mapper.TestMapper;
import com.pm.model.Student;
import com.pm.service.TestService;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private TestMapper tMapper;

	@Override
	public List<Student> query() {
		return tMapper.queryAll();
	}

}
