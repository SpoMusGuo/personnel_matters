package com.pm.ctrl;

import java.lang.ProcessBuilder.Redirect;
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
		//通过页码获得该页个人税务表
		List<TaxGrade> taxGrades = new ArrayList<TaxGrade>();
		
		//获取个人税表的总数
		int taxGradesCount = payrollService.getTaxGradeCount();
		//封装分页
		Pager<TaxGrade> pager = new Pager<TaxGrade>();
		int pageSize = 5;//每页的容量
		int startIndex = (pageNum-1)*pageSize;//每页开始的序号
		int endIndex = pageNum*pageSize-1;
		int pageCount;//总页码
		if(taxGradesCount%pageSize==0) {
			pageCount = taxGradesCount/pageSize;
		}else {
			pageCount = taxGradesCount/pageSize+1;
		}
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		pager.setPageindex(pageNum);
		pager.setPagecount(pageCount);
		pager.setRecords(taxGradesCount);
		taxGrades = payrollService.getTaxGrades(pager);
		pager.setDatas(taxGrades);
		
		
		//传到页面
		map.put("pager", pager);
		return "payroll-control/personal_income_taxsetting";
	}
<<<<<<< HEAD
	
=======
	/**
	 * 删除个人税设置
	 * @param taxgrade_grade:个人税等级
	 * @param 
	 * @return
	 */
>>>>>>> f873c4d01ff5943692ae544e66aa9f3a5f9dfa2f
	@RequestMapping("/removeTaxGrade/{taxgrade_grade}")
	public String removeTaxGrade(@PathVariable(value="taxgrade_grade")int taxgrade_grade,ModelMap map) {
		
		payrollService.removeTaxGrade(taxgrade_grade);
		return "redirect:/PersonalIncomeTaxSetting/1";
	}
	/**
	 * 通过关键字查找需要查看的税务
	 * @param keyword:关键字
	 * @param 
	 * @return
	 */
	@RequestMapping("/searchTaxGrade/{keyWord}/{pageNum}")
	public String searchTaxGrade(@PathVariable(value="keyWord")String keyWord,@PathVariable(value="pageNum")int pageNum,ModelMap map) {
		
		List<TaxGrade> taxGrade = payrollService.getSearchTaxGrade(keyWord);
		//获取查找的个人税表的总数
		int taxGradesCount = taxGrade.size();
		//封装Pager
		Pager<TaxGrade> pager = new Pager<TaxGrade>();
		int pageSize = 5;//每页的容量
		int startIndex = (pageNum-1)*pageSize;//每页开始的序号
		int endIndex = pageNum*pageSize-1;
		int pageCount;//总页码
		if(taxGradesCount%pageSize==0) {
			pageCount = taxGradesCount/pageSize;
		}else {
			pageCount = taxGradesCount/pageSize+1;
		}
		pager.setDatas(taxGrade);
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		pager.setPageindex(pageNum);
		pager.setPagecount(pageCount);
		pager.setRecords(taxGradesCount);
		//传到页面
		map.put("pager", pager);
		return "payroll-control/personal_income_taxsetting";
		
	}
	/**
	 * 修改个人所得税设置表
	 * @return
	 */
	@RequestMapping("/updateTaxGradeView/{taxgradeGrade}")
	public String goUpdateTaxGrade(@PathVariable(value="taxgradeGrade")String taxgradeGrade,ModelMap map) {
		map.put("taxGrade", payrollService.getTaxGrade(taxgradeGrade));
		return "payroll-control/update_taxgrade";
	}
	@RequestMapping("/updateTaxGrade")
	public String updateTaxGrade(TaxGrade taxGrade) {
		System.out.println("进来");
		TaxGrade newTaxGrade = new TaxGrade();
		newTaxGrade.setTaxgrade_grade(taxGrade.getTaxgrade_grade());
		newTaxGrade.setTaxgrade_end(taxGrade.getTaxgrade_end());
		newTaxGrade.setTaxgrade_start(taxGrade.getTaxgrade_start());
		newTaxGrade.setTaxgrade_speed(taxGrade.getTaxgrade_speed());
		newTaxGrade.setTaxgrade_rate(taxGrade.getTaxgrade_rate());
		payrollService.updateTaxGrade(newTaxGrade);
		return "redirect:/PersonalIncomeTaxSetting/1";
	}
	@RequestMapping("/PieceworkProductSetup")
	public String registerPieceworkProductSetup() {
		return "payroll-control/piecework_product_setup";
	}
}
