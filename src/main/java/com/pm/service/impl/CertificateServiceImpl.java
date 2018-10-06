package com.pm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pm.mapper.CertificateMapper;
import com.pm.model.Certificate;
import com.pm.model.GpjPager;
import com.pm.service.CertificateService;

@Service(value = "certificateServiceImpl")
public class CertificateServiceImpl implements CertificateService {

	@Resource(name = "certificateMapper")
	private CertificateMapper certificateMapper;

	// 分页查询员工证照信息
	@Override
	public List<Certificate> getAllEmpCertificateService(GpjPager<Certificate> pager) {
		// TODO Auto-generated method stub
		return certificateMapper.getAllEmpCertificate(pager);
	}

	// 获取certificate表的总行数
	@Override
	public int getRowCountService() {

		return certificateMapper.getRowCount();
	}

	// 符合查询条件的记录数
	@Override
	public int likeSearchCountService(String searchText) {

		return certificateMapper.likeSearchCount(searchText);
	}

	// 符合查询条件的记录
	@Override
	public List<Certificate> likeSearchService(GpjPager<Certificate> pager) {
		// TODO Auto-generated method stub
		return certificateMapper.likeSearch(pager);
	}

	// 删除某一条记录
	@Override
	public void deleteByIdService(String certificateId) {
		certificateMapper.deleteById(certificateId);
	}

	// 获取某一条数据
	@Override
	public Certificate selectOneService(String certificateId) {

		return certificateMapper.selectOne(certificateId);
	}

	// 更新某一条员工证照信息
	@Override
	public void updateByIdService(Certificate certificate) {

		certificateMapper.updateById(certificate);

	}

	// 插入一条员工证照信息
	@Override
	public void insertService(Certificate certificate) {

		certificateMapper.insert(certificate);

	}

}
