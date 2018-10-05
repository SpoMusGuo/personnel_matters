package com.pm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pm.model.Certificate;
import com.pm.model.GpjPager;

@Repository(value = "certificateMapper")
public interface CertificateMapper {

	// 分页查询员工的证照信息
	public List<Certificate> getAllEmpCertificate(GpjPager<Certificate> pager);

	// 获取证照表的行数
	public int getRowCount();

	// 获取某一条数据
	public Certificate selectOne(String certificateId);

	// 符合查询条件的记录数
	public int likeSearchCount(String searchText);

	// 符合查询条件的记录
	public List<Certificate> likeSearch(GpjPager<Certificate> pager);

	// 删除某一条记录
	public void deleteById(String certificateId);

}
