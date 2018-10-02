package com.pm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.pm.model.Good;
@Repository
public interface GoodMapper {
	public List<Good> listAll();//查找所有物品
	public List<Good> listType(String good_type);//查找某种类型物品
	public Good get(String good_id);//通过编号查找某个物品
	public List<Good> listName(String good_name);//通过物品名称查找物品
	public int insertGood(Good good);//插入新物品
	public int deleteGood(String good_id);//删除某个物品
	public int updateGood(Good good);//修改物品信息
}
