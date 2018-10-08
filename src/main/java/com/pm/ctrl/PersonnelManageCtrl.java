package com.pm.ctrl;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pm.model.Condition;
import com.pm.model.Emp;
import com.pm.model.Paging;
import com.pm.service.EmpService;

@Controller
public class PersonnelManageCtrl {
	
	@Autowired
	private EmpService empservice;
	
	
	/**
	 * 	分页方法
	 * @param pageSize
	 * @param currentPage
	 * @param emps
	 * @return
	 */
	public Paging getPaging(String pageSize, String currentPage, List<Emp> emps) {

		Integer iPageSize;
		Integer iCurrentPage;
		
		if(pageSize != null) {
			iPageSize = Integer.parseInt(pageSize);
		} else {
			iPageSize = 15;
		}
		if(currentPage != null) {
			iCurrentPage = Integer.parseInt(currentPage);
		} else {
			iCurrentPage = 1;
		}
		
		return new Paging(emps.size(), iCurrentPage, iPageSize);
	}

	
	/**
	 * 	查询所有员工信息
	 * @param pageSize
	 * @param currentPage
	 * @param keyword
	 * @param map
	 * @return
	 */
	@RequestMapping("/index_emp")
	public String queryEmpList(String pageSize, String currentPage, String keyword, Map<String, Object> map) {
		
		List<Emp> emps;
		//	是否模糊查询
		if(keyword == null || keyword.equals("")) {
			emps = empservice.queryEmpList();
		} else {
			emps = empservice.queryEmpVague(keyword);
		}
		
		map.put("EMPS", emps);
		map.put("PAGING", this.getPaging(pageSize, currentPage, emps));
		map.put("KEYWORD", keyword);
		
		return "personnel/index_emp";
	}
	
	
	/**
	 * 	条件查询
	 * @param pageSize
	 * @param currentPage
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/search_strict")
	public String queryEmpStrict(String pageSize, String currentPage, HttpServletRequest request, Map<String, Object> map) {

		HttpSession session = request.getSession();
		List<Condition> conditionList;
		
		//	判断是跳转页（分页）还是重新进行条件查找
		if(request.getParameter("SEARCH") == null) {
			conditionList = (List<Condition>) session.getAttribute("CONDI");
			
		}else {
			Map<Integer, String> conditions = new TreeMap<Integer, String>();
			String chkAlias;
			
			//	获取前端选中的条件
			for(int i = 1; i < 49; i++) {
				chkAlias = request.getParameter("chkAlias_" + i);
				if(chkAlias != null) {
					conditions.put(i, chkAlias);
				}
				chkAlias = null;
			}
			
			conditionList = new ArrayList<Condition>();
			Condition condition = new Condition();
				
			//	获取条件的具体内容
			for(Map.Entry<Integer, String> entry: conditions.entrySet()) {
				int i =  entry.getKey();
				condition.setFieldName(entry.getValue());
				condition.setParameter1(request.getParameter("txtv1_" + i));
				condition.setParameter2(request.getParameter("txtv2_" + i));
				condition.setSymbol(request.getParameter("cboop1_" + i));
				
				conditionList.add(condition);
				condition = new Condition();
			}
			
			session.setAttribute("CONDI", conditionList);
		}
		
		List<Emp> emps = empservice.queryEmpStrict(conditionList);
		map.put("EMPS", emps);
		map.put("PAGING", this.getPaging(pageSize, currentPage, emps));
		map.put("SEARCH", "1");		//	告诉前端这是条件查询的结果（使用分页时需要知道）
		
		return "personnel/index_emp";
	}
	
	
	@RequestMapping("/add_emp")
	public String insertEmp(HttpServletRequest request, Map<String, Object> map, Date emp_birthday, Date emp_graduate_time, Date emp_hiredate, Date emp_transfer_time, Date emp_register_time) {
		
		Emp emp = new Emp();
		emp.setEmpId(Integer.parseInt(request.getParameter("emp_id")));
		emp.setEmpIdNumber(request.getParameter("emp_idnumber"));
		emp.setEmpName(request.getParameter("emp_name"));
		emp.setEmpNativePlace(request.getParameter("emp_native_place"));
		emp.setEmpSex(request.getParameter("emp_sex"));
		emp.setEmpBirthday(emp_birthday);
		emp.setEmpUsedName(request.getParameter("emp_used_name"));
		emp.setEmpNation(request.getParameter("emp_nation"));
		emp.setEmpAge(Integer.parseInt(request.getParameter("emp_age")));
		emp.setEmpEnglishName(request.getParameter("emp_english_name"));
		emp.setEmpPoliticalStatus(request.getParameter("emp_political_status"));
		emp.setEmpMarriage(request.getParameter("emp_marriage"));
		emp.setEmpEducationSt(request.getParameter("emp_education_st"));
		emp.setEmpEducationNd(request.getParameter("emp_major_st"));
		emp.setEmpMajorSt(request.getParameter("emp_graduated_st"));
		emp.setEmpMajorNd(request.getParameter("emp_education_nd"));
		emp.setEmpGraduatedNd(request.getParameter("emp_major_nd"));
		emp.setEmpGraduatedSt(request.getParameter("emp_graduated_nd"));
		emp.setEmpDegree(request.getParameter("emp_degree"));
		emp.setEmpGraduateTime(emp_graduate_time);
		emp.setEmpComputerLevel(request.getParameter("emp_computer_level"));
		emp.setEmpForeign1(request.getParameter("emp_foreign_1"));
		emp.setEmpForeign2(request.getParameter("emp_foreign_2"));
		emp.setEmpForeign3(request.getParameter("emp_foreign_3"));
		emp.setEmpForeignLevel1(request.getParameter("emp_foreign_level_1"));
		emp.setEmpForeignLevel2(request.getParameter("emp_foreign_level_2"));
		emp.setEmpForeignLevel3(request.getParameter("emp_foreign_level_3"));
		emp.setEmpApartment(request.getParameter("emp_apartment"));
		emp.setEmpInhabitant(request.getParameter("emp_inhabitant"));
		emp.setEmpForeigners(request.getParameter("emp_foreigners"));
		emp.setEmpTelphone(request.getParameter("emp_telphone"));
		emp.setEmpMobilePhone(request.getParameter("emp_mobilephone"));
		emp.setEmpEmail(request.getParameter("emp_email"));
		emp.setEmpHomeAddress(request.getParameter("emp_home_address"));
		emp.setEmpSpeciality(request.getParameter("emp_speciality"));
		emp.setEmpDepartment(request.getParameter("emp_department"));
		emp.setEmpAcademicTitle(request.getParameter("emp_academic_title"));
		emp.setEmpJob(request.getParameter("emp_job"));
		emp.setEmpGrade(request.getParameter("emp_grade"));
		emp.setEmpJobCategory(request.getParameter("emp_job_category"));
		emp.setEmpWorkCategory(request.getParameter("emp_work_category"));
		emp.setEmpHiredate(emp_hiredate);
		emp.setEmpTransferTime(emp_transfer_time);
		emp.setEmpSumSeniorty(Integer.parseInt(request.getParameter("emp_sum_seniority")));
		emp.setEmpUnitSeniorty(Integer.parseInt(request.getParameter("emp_unit_seniorty")));
		emp.setEmpBankAccount(request.getParameter("emp_bank_account"));
		emp.setEmpBaseSalary(new BigDecimal(request.getParameter("emp_base_salary")));
		emp.setEmpRegisterTime(emp_register_time);
		emp.setEmpPhoto(request.getParameter("emp_photo"));
		
		empservice.insertEmp(emp);
			
		map.put("INSERTED", "1");
		
		return "personnel/add_emp";
	}
	
	
	@RequestMapping("/set_emp")
	public String updateEmp(HttpServletRequest request, Map<String, Object> map, Date emp_birthday, Date emp_graduate_time, Date emp_hiredate, Date emp_transfer_time, Date emp_register_time) {
		
		Emp emp = new Emp();
		emp.setEmpId(Integer.parseInt(request.getParameter("emp_id")));
		emp.setEmpIdNumber(request.getParameter("emp_idnumber"));
		emp.setEmpName(request.getParameter("emp_name"));
		emp.setEmpNativePlace(request.getParameter("emp_native_place"));
		emp.setEmpSex(request.getParameter("emp_sex"));
		emp.setEmpBirthday(emp_birthday);
		emp.setEmpUsedName(request.getParameter("emp_used_name"));
		emp.setEmpNation(request.getParameter("emp_nation"));
		emp.setEmpAge(Integer.parseInt(request.getParameter("emp_age")));
		emp.setEmpEnglishName(request.getParameter("emp_english_name"));
		emp.setEmpPoliticalStatus(request.getParameter("emp_political_status"));
		emp.setEmpMarriage(request.getParameter("emp_marriage"));
		emp.setEmpEducationSt(request.getParameter("emp_education_st"));
		emp.setEmpEducationNd(request.getParameter("emp_major_st"));
		emp.setEmpMajorSt(request.getParameter("emp_graduated_st"));
		emp.setEmpMajorNd(request.getParameter("emp_education_nd"));
		emp.setEmpGraduatedNd(request.getParameter("emp_major_nd"));
		emp.setEmpGraduatedSt(request.getParameter("emp_graduated_nd"));
		emp.setEmpDegree(request.getParameter("emp_degree"));
		emp.setEmpGraduateTime(emp_graduate_time);
		emp.setEmpComputerLevel(request.getParameter("emp_computer_level"));
		emp.setEmpForeign1(request.getParameter("emp_foreign_1"));
		emp.setEmpForeign2(request.getParameter("emp_foreign_2"));
		emp.setEmpForeign3(request.getParameter("emp_foreign_3"));
		emp.setEmpForeignLevel1(request.getParameter("emp_foreign_level_1"));
		emp.setEmpForeignLevel2(request.getParameter("emp_foreign_level_2"));
		emp.setEmpForeignLevel3(request.getParameter("emp_foreign_level_3"));
		emp.setEmpApartment(request.getParameter("emp_apartment"));
		emp.setEmpInhabitant(request.getParameter("emp_inhabitant"));
		emp.setEmpForeigners(request.getParameter("emp_foreigners"));
		emp.setEmpTelphone(request.getParameter("emp_telphone"));
		emp.setEmpMobilePhone(request.getParameter("emp_mobilephone"));
		emp.setEmpEmail(request.getParameter("emp_email"));
		emp.setEmpHomeAddress(request.getParameter("emp_home_address"));
		emp.setEmpSpeciality(request.getParameter("emp_speciality"));
		emp.setEmpDepartment(request.getParameter("emp_department"));
		emp.setEmpAcademicTitle(request.getParameter("emp_academic_title"));
		emp.setEmpJob(request.getParameter("emp_job"));
		emp.setEmpGrade(request.getParameter("emp_grade"));
		emp.setEmpJobCategory(request.getParameter("emp_job_category"));
		emp.setEmpWorkCategory(request.getParameter("emp_work_category"));
		emp.setEmpHiredate(emp_hiredate);
		emp.setEmpTransferTime(emp_transfer_time);
		emp.setEmpSumSeniorty(Integer.parseInt(request.getParameter("emp_sum_seniority")));
		emp.setEmpUnitSeniorty(Integer.parseInt(request.getParameter("emp_unit_seniorty")));
		emp.setEmpBankAccount(request.getParameter("emp_bank_account"));
		emp.setEmpBaseSalary(new BigDecimal(request.getParameter("emp_base_salary")));
		emp.setEmpRegisterTime(emp_register_time);
		emp.setEmpPhoto(request.getParameter("emp_photo"));
		
		empservice.updateEmp(emp);
		map.put("emp", emp);
		
		return "personnel/set_emp";
	}
	
	
	@RequestMapping("/remove_emp")
	public String deleteEmp(String empId, Map<String, Object> map, String pageSize, String currentPage, String keyword) {
		
		empservice.deleteEmp(Integer.parseInt(empId));
		
		List<Emp> emps;
		//	是否模糊查询
		if(keyword == null || keyword.equals("")) {
			emps = empservice.queryEmpList();
		} else {
			emps = empservice.queryEmpVague(keyword);
		}
		
		map.put("EMPS", emps);
		map.put("PAGING", this.getPaging(pageSize, currentPage, emps));
		
		return "personnel/index_emp";
	}
	
	
	/**
	 * 	打开条件查询页面
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/search_condition")
	public String queryEmpCondition(HttpServletRequest request, Map<String, Object> map) {
		
		//	返回session保存的条件查询记录
		HttpSession session = request.getSession();
		map.put("CONDI", session.getAttribute("CONDI"));
		
		return "personnel/condition_emp";
	}
	
	
	/**
	 * 	打开新增页面
	 * @return
	 */
	@RequestMapping("/add_emp_view")
	public String insertEmpView() {
		
		return "personnel/add_emp";
	}
	
	
	@RequestMapping("/set_emp_view")
	public String updateEmpView(String empId, Map<String, Object> map) {
		
		Emp emp = empservice.queryEmp(Integer.parseInt(empId));
		map.put("emp", emp);
		
		return "personnel/set_emp";
	}
	
	
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		dateFormat.setLenient(false);  
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}
	
	
	@ExceptionHandler({DataIntegrityViolationException.class, NumberFormatException.class})
	public ModelAndView insertEmpException(Exception ex) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("MESSAGE", "请输入完整的信息！");
		mv.setViewName("personnel/add_emp");
		
		return mv;
	}
}
