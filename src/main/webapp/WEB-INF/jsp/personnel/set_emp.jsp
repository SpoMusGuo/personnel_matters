<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            href="/personnel_matters/css/index_body_Manage.css" type=text/css rel=stylesheet><LINK
            href="/personnel_matters/css/index_body_Style.css" type=text/css rel=stylesheet>
    <SCRIPT language=javascript src="/personnel_matters/js/FrameDiv.js"></SCRIPT>
    <SCRIPT language=javascript src="/personnel_matters/js/Common.js"></SCRIPT>
	<script type="text/javascript" src="/personnel_matters/js/jquery.min.js"></script>
	<style>
		*{
		padding:0;
		margin:0;
		}
	</style>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action="set_emp?emp_id=${requestScope.emp.empId }" method=post onsubmit="return check()">	    
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15>
		            	<IMG src="/personnel_matters/images/new_019.jpg" border=0>
		            </TD>
		            <TD width="100%" background=/personnel_matters/images/new_020.jpg height=20>
		            </TD>
		            <TD width=15>
		            	<IMG src="/personnel_matters/images/new_021.jpg" border=0>
		            </TD>
		        </TR>
	        </TBODY>
	    </TABLE>
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15 background=/personnel_matters/images/new_022.jpg>
		            	<IMG src="/personnel_matters/images/new_022.jpg" border=0>
		            </TD>
		            <TD vAlign=top width="100%" bgColor=#ffffff>
		            	<table  width="100%" >
		            		<tr  width="100%">
		            			<td  width="70%">
		            				<table width="100%" bgColor="#99CCFF" >
		            					<tr><th colspan="6">员工基本信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="10%">员工编号</td>
		            						<td width="23%">
		            							<input name="emp_id" id="emp_id" type="text" value="${requestScope.emp.empId }" style="width:90%" disabled>
		            						</td>
		            						<td width="10%">身份证号</td>
		            						<td width="23%"><input name="emp_idnumber" type="text" value="${requestScope.emp.empIdNumber }" style="width:90%"></td>
		            						<td width="10%">籍贯</td>
		            						<td width="23%"><input name="emp_name" type="text" value="${requestScope.emp.empNativePlace }" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>姓名</td>
		            						<td><input name="emp_native_place" type="text" value="${requestScope.emp.empName }" style="width:90%" ></td>
		            						<td>性别</td>
		            						<td>
		            							<select name="emp_sex" style="width:90%;height:100%;display:block" >
													  <option value ="男">男</option>
													  <option value ="女">女</option>
												</select></td>
		            						<td>出生日期</td>
		            						<td><input name="emp_birthday" type="date" 
		            							value="<fmt:formatDate value="${emp.empBirthday }" pattern="yyyy-MM-dd" />" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>曾用名</td>
		            						<td><input name="emp_used_name" type="text" value="${requestScope.emp.empUsedName }" style="width:90%" ></td>
		            						<td>民族</td>
		            						<td><input name="emp_nation" type="text" value="${requestScope.emp.empNation }" style="width:90%"></td>
		            						<td>年龄</td>
		            						<td><input name="emp_age" type="text" value="${requestScope.emp.empAge }" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>英文名</td>
		            						<td><input name="emp_english_name" type="text" value="${requestScope.emp.empEnglishName }" style="width:90%" ></td>
											<td>政治面貌</td>
											<td><input name="emp_political_status" type="text" value="${requestScope.emp.empPoliticalStatus }" style="width:90%"></td>
											<td>婚否</td>
											<td><input name="emp_marriage" type="text" value="${requestScope.emp.empMarriage }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>第一学历</td>
											<td><input name="emp_education_st" type="text" value="${requestScope.emp.empEducationSt }" style="width:90%" ></td>
											<td>第一专业</td>
											<td><input name="emp_major_st" type="text" value="${requestScope.emp.empMajorSt }" style="width:90%"></td>
											<td>第一毕业院校</td>
											<td><input name="emp_graduated_st" type="text" value="${requestScope.emp.empGraduatedSt }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>第二学历</td>
											<td><input name="emp_education_nd" type="text" value="${requestScope.emp.empEducationNd }" style="width:90%" ></td>
											<td>第二专业</td>
											<td><input name="emp_major_nd" type="text" value="${requestScope.emp.empMajorNd }" style="width:90%"></td>
											<td>第二毕业院校</td>
											<td><input name="emp_graduated_nd" type="text" value="${requestScope.emp.empGraduatedNd }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>学位</td>
											<td><input name="emp_degree" type="text" value="${requestScope.emp.empDegree }" style="width:90%" ></td>
											<td>毕业时间</td>
											<td><input name="emp_graduate_time" type="date"
		            							value="<fmt:formatDate value="${emp.empGraduateTime }" pattern="yyyy-MM-dd" />" style="width:90%"></td>
											<td>电脑水平</td>
											<td><input name="emp_computer_level" type="text" value="${requestScope.emp.empComputerLevel }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>外语语种1</td>
											<td><input name="emp_foreign_1" type="text" value="${requestScope.emp.empForeign1 }" style="width:90%" ></td>
											<td>外语语种2</td>
											<td><input name="emp_foreign_2" type="text" value="${requestScope.emp.empForeign2 }" style="width:90%"></td>
											<td>外语语种3</td>
											<td><input name="emp_foreign_3" type="text" value="${requestScope.emp.empForeign3 }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>外语水平1</td>
											<td><input name="emp_foreign_level_1" type="text" value="${requestScope.emp.empForeignLevel1 }" style="width:90%" ></td>
											<td>外语水平2</td>
											<td><input name="emp_foreign_level_2" type="text" value="${requestScope.emp.empForeignLevel2 }" style="width:90%"></td>
											<td>外语水平3</td>
											<td><input name="emp_foreign_level_3" type="text" value="${requestScope.emp.empForeignLevel3 }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>住房情况</td>
											<td><input name="emp_apartment" type="text" value="${requestScope.emp.empApartment }" style="width:90%" ></td>
											<td>常住人口</td>
											<td><input name="emp_inhabitant" type="text" value="${requestScope.emp.empInhabitant }" style="width:90%"></td>
											<td>外籍人士</td>
											<td><input name="emp_foreigners" type="text" value="${requestScope.emp.empForeigners }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>联系电话</td>
											<td><input name="emp_telphone" type="text" value="${requestScope.emp.empTelphone }" style="width:90%" ></td>
											<td>手机号码</td>
											<td><input name="emp_mobilephone" type="text" value="${requestScope.emp.empMobilePhone }" style="width:90%"></td>
											<td>电子邮件</td>
											<td><input name="emp_email" type="text" value="${requestScope.emp.empEmail }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>家庭地址</td>
											<td colspan="3"><input name="emp_home_address" type="text" value="${requestScope.emp.empHomeAddress }" style="width:96%" ></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>特长</td>
											<td colspan="3"><input name="emp_speciality" type="text" value="${requestScope.emp.empSpeciality }" style="width:96%" ></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>所属部门</td>
											<td colspan="3"><input name="emp_department" type="text" value="${requestScope.emp.empDepartment }" style="width:96%" ></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>职称</td>
											<td><input name="emp_academic_title" type="text" value="${requestScope.emp.empAcademicTitle }" style="width:90%" ></td>
											<td>职务</td>
											<td><input name="emp_job" type="text" value="${requestScope.emp.empJob }" style="width:90%"></td>
											<td>等级</td>
											<td><input name="emp_grade" type="text" value="${requestScope.emp.empGrade }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>在职类别</td>
											<td><input name="emp_job_category" type="text" value="${requestScope.emp.empJobCategory }" style="width:90%" ></td>
											<td>工种</td>
											<td><input name="emp_work_category" type="text" value="${requestScope.emp.empWorkCategory }" style="width:90%"></td>
											<td>参加工作时间</td>
											<td><input name="emp_hiredate" type="date"
		            							value="<fmt:formatDate value="${emp.empTransferTime }" pattern="yyyy-MM-dd" />" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>调入时间</td>
											<td><input name="emp_transfer_time" type="date"
		            							value="<fmt:formatDate value="${emp.empTransferTime }" pattern="yyyy-MM-dd" />" style="width:90%" ></td>
											<td>总工龄</td>
											<td><input name="emp_sum_seniority" type="text" value="${requestScope.emp.empSumSeniorty }" style="width:90%"></td>
											<td>本单位工龄</td>
											<td><input name="emp_unit_seniorty" type="text" value="${requestScope.emp.empUnitSeniorty }" style="width:90%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>银行帐号</td>
											<td colspan="3"><input name="emp_bank_account" type="text" value="${requestScope.emp.empBankAccount }" style="width:96%"></td></tr>
										<tr><td colspan="4">&nbsp;</td></tr>
										<tr>
											<td>基本工资</td>
											<td><input name="emp_base_salary" type="text" value="${requestScope.emp.empBaseSalary }" style="width:90%"></td>
											<td>录入时间</td>
											<td><input name="emp_register_time" type="date"
		            							value="<fmt:formatDate value="${emp.empRegisterTime }" pattern="yyyy-MM-dd" />" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td></td><td><input type="submit" value="提交" style="width:50px" /></td>
		            						<td><input type="button" value="返回" onclick="window.location.assign('index_emp');" style="width:50px"/></td><td></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            				</table>
		            			</td>
		            			<td>			  
		            			</td>
		            		</tr>
		            	</table>
		            </TD>
		            <TD width=15 background=/personnel_matters/images/new_023.jpg>
		            	<IMG src="/personnel_matters/images/new_023.jpg" border=0> 
		            </TD>
		        </TR>
	        </TBODY>
	    </TABLE>
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15><IMG src="/personnel_matters/images/new_024.jpg" border=0></TD>
		            <TD align=middle width="100%" background=/personnel_matters/images/new_025.jpg height=15></TD>
		            <TD width=15><IMG src="/personnel_matters/images/new_026.jpg" border=0></TD>
		        </TR>
	       	</TBODY>
	    </TABLE>
	</FORM>
	
	<script type="text/javascript">
		$(document).ready(function(){
			<c:choose>
				<c:when test="${requestScope.INSERTED == 1 }">
					if(confirm("新增员工成功！是否回到员工信息页面？")){
						window.location.assign("index_emp");
					}
				</c:when>
				<c:when test="${requestScope.MESSAGE != null }">
					alert("${requestScope.MESSAGE}".split(":")[1]);
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>
		});
	</script>
	
</body>
</html>