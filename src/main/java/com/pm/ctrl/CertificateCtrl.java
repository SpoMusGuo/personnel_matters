package com.pm.ctrl;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Certificate;
import com.pm.model.GpjPager;
import com.pm.service.CertificateService;

@RequestMapping("/certificate")
@Controller
public class CertificateCtrl {

	@Resource(name = "certificateServiceImpl")
	private CertificateService certificateService;

	// 获取所有员工的证照信息
	@RequestMapping(value = { "/list/{i}", "/list" })
	public String getAll(Model model, @PathVariable(value = "i", required = false) Integer nowPage) {

		System.out.println(nowPage);
		if (nowPage == null) {
			nowPage = 1;
		}

		GpjPager<Certificate> pager = new GpjPager<Certificate>(nowPage);

		// 行数
		double rowCount = certificateService.getRowCountService();
		pager.setRowCount((int) rowCount);
		int pageCount = (int) (Math.ceil(rowCount / pager.getPageSize()));
		pager.setPageCount(pageCount);
		pager.setCertificates(certificateService.getAllEmpCertificateService(pager));

		model.addAttribute("pagers", pager);

		return "/certificate/certificates";

	}

	// 模糊查询
	@RequestMapping(value = { "search/{searchText}/{i}", "search/{searchText}" })
	public String likeSearch(Model model, @PathVariable(value = "searchText") String searchText,
			@PathVariable(value = "i", required = false) Integer nowPage) {

		if (nowPage == null) {
			nowPage = 1;
		}
		GpjPager<Certificate> pager = new GpjPager<Certificate>(nowPage);

		double rowCount = certificateService.likeSearchCountService(searchText);
		int pageCount = (int) Math.ceil(rowCount / pager.getPageSize());
		pager.setRowCount((int) rowCount);
		pager.setPageCount(pageCount);
		pager.setSearchText(searchText);
		pager.setCertificates(certificateService.likeSearchService(pager));
		System.out.println(searchText);
		model.addAttribute("pagers", pager);

		return "/certificate/searchcertificate";
	}

	// 删除某一条记录
	@RequestMapping("/delete/{certificateId}")
	public String delete(@PathVariable(value = "certificateId") String certificateId) {

		System.out.println(certificateId);
		certificateService.deleteByIdService(certificateId);

		return "redirect:/certificate/list";
	}

	// 获取某一条数据
	@RequestMapping("/look/{certificateId}")
	public String Update(@PathVariable(value = "certificateId") String certificateId, Model model) {

		model.addAttribute("certificate", certificateService.selectOneService(certificateId));

		return "";
	}

	// 时间格式化
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
