package com.pm.service;

import java.util.List;

import com.pm.model.Certificate;
import com.pm.model.GpjPager;

public interface CertificateService {

	// 获取证照表的所有数据
	public List<Certificate> getAllEmpCertificateService(GpjPager<Certificate> pager);

	// 获取证照表的行数
	public int getRowCountService();

	// 获取某一条数据
	public Certificate selectOneService(String certificateId);

	// 符合查询条件的记录数
	public int likeSearchCountService(String searchText);

	// 符合查询条件的记录
	public List<Certificate> likeSearchService(GpjPager<Certificate> pager);

	// 删除某一条记录
	public void deleteByIdService(String certificateId);

}
