package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Student;

@Repository
public interface TestMapper {

	public List<Student> queryAll();

}
