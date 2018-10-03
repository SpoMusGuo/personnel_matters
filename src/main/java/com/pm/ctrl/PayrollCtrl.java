package com.pm.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Pager;
import com.pm.model.TaxGrade;
import com.pm.service.PayrollService;
import com.pm.service.impl.PayrollServiceImpl;

@Controller
public class PayrollCtrl {
	@Resource(name="payrollService")
	private PayrollService payrollService;
	
	/**
	 * 个人所得税设置页面
	 * @param pageNum:页码
	 * @param map
	 * @return
	 */
	@RequestMapping("/PersonalIncomeTaxSetting/{pageNum}")
	public String registerPersonalIncomeTaxSetting(@PathVariable(value="pageNum")int pageNum,ModelMap map) {
		//分页
		Pager pager = new Pager();
		int pageSize = 8;
		int startIndex = (pageNum-1)*pageSize;
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		List<TaxGrade> TaxGrades = new ArrayList<TaxGrade>();
		TaxGrades = payrollService.getTaxGrade(pager);
		map.put("taxGrades", TaxGrades);
		map.put("taxGrades_count", TaxGrades.size());
		map.put("taxGrades_sum", payrollService.getTaxGradeCount());
		return "payroll-control/personal_income_taxsetting";
	}
	@RequestMapping("/removeTaxGrade/{taxgrade_grade}")
	public String removeTaxGrade(@PathVariable(value="taxgrade_grade")int taxgrade_grade,ModelMap map) {
		payrollService.removeTaxGrade(taxgrade_grade);
		return "redirect:/PersonalIncomeTaxSetting";
	}
	
	
	@RequestMapping("/PieceworkProductSetup")
	public String registerPieceworkProductSetup() {
		return "payroll-control/piecework_product_setup";
	}
}
