package com.pm.ctrl;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Certificate;
import com.pm.model.Emp;
import com.pm.model.GpjPager;
import com.pm.service.CertificateService;
import com.pm.service.EmpService;

@RequestMapping("/certificate")
@Controller
public class CertificateCtrl {

	@Resource(name = "certificateServiceImpl")
	private CertificateService certificateService;

	@Autowired
	private EmpService empService;

	// 判断有没有某一个员工
	@RequestMapping("/check/emp/{empId}")
	public void checkEmp(HttpServletResponse response, @PathVariable(value = "empId") Integer empId) {
		try {
			PrintWriter out = response.getWriter();
			Emp emp = empService.queryEmp(empId);
			System.out.println(emp);
			if (emp == null) {
				out.print("false");
			} else {
				out.print("true");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 判断证照信息表有没有这个员工
	@RequestMapping("/check/{certificateId}")
	public void checkCertificate(@PathVariable(value = "certificateId") String certificateId,
			HttpServletResponse response) {
		try {
			PrintWriter out = response.getWriter();
			Certificate certificate = certificateService.selectOneService(certificateId);
			if (certificate == null) {
				// 没有这个员工
				out.print("false");
			} else {
				out.print("true");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 跳转到增加记录页面
	@RequestMapping("/gotoadd")
	public String goToAddPage() {
		return "certificate/addCertificate";
	}

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
	public String get(@PathVariable(value = "certificateId") String certificateId, Model model) {

		model.addAttribute("certificate", certificateService.selectOneService(certificateId));

		return "certificate/editCertificate";
	}

	// 更新某一条员工证照信息
	@RequestMapping("/update")
	public String Update(Certificate certificate) {
		certificateService.updateByIdService(certificate);
		return "redirect:/certificate/list";
	}

	// 插入一条员工数据
	@RequestMapping("/add")
	public String Insert(Certificate certificate) {

		certificateService.insertService(certificate);

		return "redirect:/certificate/list";
	}

	// 时间格式化
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
