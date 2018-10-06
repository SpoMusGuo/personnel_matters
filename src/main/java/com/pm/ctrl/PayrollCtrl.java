package com.pm.ctrl;

import java.awt.print.Paper;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Condition;
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
		map.put("type", "searchAll");
		return "payroll-control/personal_income_taxsetting";
	}
	/**
	 * 删除个人税设置
	 * @param taxgrade_grade:个人税等级
	 * @param 
	 * @return
	 */
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
		
		List<TaxGrade> taxGrade;
		//封装Pager
		Pager<TaxGrade> pager = new Pager<TaxGrade>();
		int pageSize = 5;//每页的容量
		int startIndex = (pageNum-1)*pageSize;//每页开始的序号
		int endIndex = pageNum*pageSize-1;
		int pageCount;//总页码
		//获取查找的个人税表的总数
		int taxGradesCount = payrollService.getSearchTaxGradeCount(keyWord);
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
		taxGrade= payrollService.getSearchTaxGrade(keyWord,pager);
		pager.setDatas(taxGrade);
		
		//传到页面
		map.put("pager", pager);
		return "payroll-control/personal_income_taxsetting";
		
	}
	/**
	 * 跳转至修改个人所得税页面
	 * @return:要修改的个人所得税等级信息
	 */
	@RequestMapping("/updateTaxGradeView/{taxgradeGrade}")
	public String goUpdateTaxGrade(@PathVariable(value="taxgradeGrade")String taxgradeGrade,ModelMap map) {
		map.put("taxGrade", payrollService.getTaxGrade(taxgradeGrade));
		return "payroll-control/update_taxgrade";
	}
	/**
	 * 修改个人所得税等级信息
	 * @param taxGrade:修改后的该等级个人所得税信息
	 * @return：返回个人税设置界面
	 */
	@RequestMapping("/updateTaxGrade")
	public String updateTaxGrade(TaxGrade taxGrade) {
		TaxGrade newTaxGrade = new TaxGrade();
		newTaxGrade.setTaxgrade_grade(taxGrade.getTaxgrade_grade());
		newTaxGrade.setTaxgrade_end(taxGrade.getTaxgrade_end());
		newTaxGrade.setTaxgrade_start(taxGrade.getTaxgrade_start());
		newTaxGrade.setTaxgrade_speed(taxGrade.getTaxgrade_speed());
		newTaxGrade.setTaxgrade_rate(taxGrade.getTaxgrade_rate());
		payrollService.updateTaxGrade(newTaxGrade);
		return "redirect:/PersonalIncomeTaxSetting/1";
	}
	//跳到新增个人税务界面
	@RequestMapping("/addTaxGradeView")
	public String addTaxGrade() {
		return "payroll-control/add_taxgrade";
	}
	/**
	 * 检测输入的税务等级是否重复
	 * @param grade:前台输入的税务等级
	 * 
	 */
	@RequestMapping("/checkTaxGrade")
	public void checkTaxGrade(String grade,HttpServletRequest request,HttpServletResponse response) {
		try {
			PrintWriter out = response.getWriter();
			TaxGrade taxGrade = payrollService.getTaxGrade(grade);
			//ajax返回前台结果为"true"时，表示无此税务等级，可以添加该税务等级
			if(taxGrade==null) {
				out.print("true");
			}else {
				out.print("false");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 添加新的个人税务等级信息进入数据库
	 * @param taxGrade:新的个人税务等级
	 * @return:不跳转继续输入
	 */
	@RequestMapping("/addTaxGrade")
	public String addTaxGrade(TaxGrade taxGrade) {
		payrollService.addTaxGrade(taxGrade);
		return "payroll-control/add_taxgrade";
	}
	//跳转到查询条件页面
	@RequestMapping("/conditionSearchView")
	public String conditionSearchView() {
		return "payroll-control/condition_taxGrade";
	}
	//条件查询
	@RequestMapping("/conditionSearch/{pageNum}")
	public String conditionSearch(@PathVariable(value="pageNum")int pageNum,ModelMap map,HttpServletRequest request,HttpServletResponse rpsponse) {
		//从前台获取条件查询条件与字段
		List<Condition> conditionList = new ArrayList<Condition>();
		//获取选中的选项
		Map<Integer,String> chkAliasList = new TreeMap<Integer,String>();
		for(int i=0;i<6;i++) {
			String chkAlias = request.getParameter("chkAlias_"+i);
			if(chkAlias!=null) {
				String fieldName = request.getParameter("chkAlias_"+i);
				String symbol = request.getParameter("cboop1_"+i);
				String parameter1 = request.getParameter("txtv"+1+"_"+i);
				String parameter2 = request.getParameter("txtv"+2+"_"+i);
				Condition condition = new Condition();
				condition.setFieldName(fieldName);
				condition.setSymbol(symbol);
				condition.setParameter1(parameter1);
				condition.setParameter2(parameter2);
				conditionList.add(condition);
			}
			chkAlias=null;
		}
		
		//查询
		List<TaxGrade> resultTaxGradeList = payrollService.getSpecialTaxGrade(conditionList);
		for(TaxGrade t:resultTaxGradeList) {
			System.out.println(t);
		}
		HttpSession session = request.getSession();
		session.setAttribute("resultTaxGradeList", resultTaxGradeList);
		
		List<TaxGrade> pageTaxGradeList = new ArrayList<TaxGrade>();
		//查询的数量
		int taxGradesCount = resultTaxGradeList.size();
		int pageSize = 5;//每页的容量
		int startIndex = (pageNum-1)*pageSize;//每页开始的序号
		int endIndex = pageNum*pageSize-1;
		int pageCount;//总页码
		if(taxGradesCount%pageSize==0) {
			pageCount = taxGradesCount/pageSize;
		}else {
			pageCount = taxGradesCount/pageSize+1;
		}
		Pager pager = new Pager();
		//根据分页设置将内容放入即将传入页面的容器
		for(int i=startIndex;i<(pageSize+startIndex);i++) {
			if(i>=taxGradesCount) {
				break;
			}
			pageTaxGradeList.add(resultTaxGradeList.get(i));
		}
		pager.setDatas(pageTaxGradeList);
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		pager.setPageindex(pageNum);
		pager.setPagecount(pageCount);
		pager.setRecords(taxGradesCount);
		map.put("pager", pager);
		map.put("type", "search");
		return "payroll-control/personal_income_taxsetting";
	}
	@RequestMapping("/conditionSearchPageNum/{pageNum}")
	public String conditionSearchPageNum(@PathVariable(value="pageNum")int pageNum,ModelMap map,HttpServletRequest request,HttpServletResponse rpsponse) {
		HttpSession session = request.getSession();
		List<TaxGrade> resultTaxGradeList= (List<TaxGrade>) session.getAttribute("resultTaxGradeList");
		List<TaxGrade> pageTaxGradeList= new ArrayList<TaxGrade>();
		//查询的数量
		int taxGradesCount = resultTaxGradeList.size();
		int pageSize = 5;//每页的容量
		int startIndex = (pageNum-1)*pageSize;//每页开始的序号
		int endIndex = pageNum*pageSize-1;
		int pageCount;//总页码
		if(taxGradesCount%pageSize==0) {
			pageCount = taxGradesCount/pageSize;
		}else {
			pageCount = taxGradesCount/pageSize+1;
		}
		Pager pager = new Pager();
		//根据分页设置将内容放入即将传入页面的容器
		for(int i=startIndex;i<(pageSize+startIndex);i++) {
			if(i>=taxGradesCount) {
				break;
			}
			pageTaxGradeList.add(resultTaxGradeList.get(i));
		}
		pager.setDatas(pageTaxGradeList);
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		pager.setPageindex(pageNum);
		pager.setPagecount(pageCount);
		pager.setRecords(taxGradesCount);
		map.put("pager", pager);
		map.put("type", "search");
		return "payroll-control/personal_income_taxsetting";
	}
	@RequestMapping("/PieceworkProductSetup")
	public String registerPieceworkProductSetup() {
		return "payroll-control/piecework_product_setup";
	}
}
