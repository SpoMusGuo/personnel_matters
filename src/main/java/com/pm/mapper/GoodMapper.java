package com.pm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.pm.model.Condition;
import com.pm.model.Emp;
import com.pm.model.Good;
import com.pm.model.Pager;
@Repository(value="goodMapper")
public interface GoodMapper {
	public List<Good> listAll();//查找所有物品
	public List<Good> listType(String good_type);//查找某种类型物品
	public Good get(String good_id);//通过编号查找某个物品
	public List<Good> listName(String good_name);//通过物品名称查找物品
	public int insertGood(Good good);//插入新物品
	public int deleteGood(String good_id);//删除某个物品
	public int updateGood(Good good);//修改物品信息
	public int getCount(String good_id);//查看物品余量
	public List<Good> listPager(Pager<Good> pager);//分页查找物品
	public int getRecords();//查询总记录条数
	public String getLastId();//查询最后一个物品的id
	public List<Good> listLike(String value);//模糊查找物品
	public List<Good> queryGoodStrict(List<Condition> conditionList);//条件查询
}
