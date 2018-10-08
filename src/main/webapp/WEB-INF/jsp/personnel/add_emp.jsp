<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<FORM id=form1 name=form1 action="add_emp" method=post onsubmit="return check()">	    
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
		            						<td width="23%"><input name="emp_id" id="emp_id" type="text" required style="width:90%" ></td>
		            						<td width="10%">身份证号</td>
		            						<td width="23%"><input name="emp_idnumber" type="text" style="width:90%"></td>
		            						<td width="10%">籍贯</td>
		            						<td width="23%"><input name="emp_name" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>姓名</td>
		            						<td><input name="emp_native_place" type="text" style="width:90%" ></td>
		            						<td>性别</td>
		            						<td>
		            							<select name="emp_sex" style="width:90%;height:100%;display:block" >
													  <option value ="男">男</option>
													  <option value ="女">女</option>
												</select></td>
		            						<td>出生日期</td>
		            						<td><input name="emp_birthday" type="date" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>曾用名</td>
		            						<td><input name="emp_used_name" type="text" style="width:90%" ></td>
		            						<td>民族</td>
		            						<td><input name="emp_nation" type="text" style="width:90%"></td>
		            						<td>年龄</td>
		            						<td><input name="emp_age" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>英文名</td>
		            						<td><input name="emp_english_name" type="text" style="width:90%" ></td>
		            						<td>政治面貌</td>
		            						<td><input name="emp_political_status" type="text" style="width:90%"></td>
		            						<td>婚否</td>
		            						<td><input name="emp_marriage" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>第一学历</td>
		            						<td><input name="emp_education_st" type="text" style="width:90%" ></td>
		            						<td>第一专业</td>
		            						<td><input name="emp_major_st" type="text" style="width:90%"></td>
		            						<td>第一毕业院校</td>
		            						<td><input name="emp_graduated_st" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>第二学历</td>
		            						<td><input name="emp_education_nd" type="text" style="width:90%" ></td>
		            						<td>第二专业</td>
		            						<td><input name="emp_major_nd" type="text" style="width:90%"></td>
		            						<td>第二毕业院校</td>
		            						<td><input name="emp_graduated_nd" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>学位</td>
		            						<td><input name="emp_degree" type="text" style="width:90%" ></td>
		            						<td>毕业时间</td>
		            						<td><input name="emp_graduate_time" type="date" style="width:90%"></td>
		            						<td>电脑水平</td>
		            						<td><input name="emp_computer_level" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>外语语种1</td>
		            						<td><input name="emp_foreign_1" type="text" style="width:90%" ></td>
		            						<td>外语语种2</td>
		            						<td><input name="emp_foreign_2" type="text" style="width:90%"></td>
		            						<td>外语语种3</td>
		            						<td><input name="emp_foreign_3" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>外语水平1</td>
		            						<td><input name="emp_foreign_level_1" type="text" style="width:90%" ></td>
		            						<td>外语水平2</td>
		            						<td><input name="emp_foreign_level_2" type="text" style="width:90%"></td>
		            						<td>外语水平3</td>
		            						<td><input name="emp_foreign_level_3" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>住房情况</td>
		            						<td><input name="emp_apartment" type="text" style="width:90%" ></td>
		            						<td>常住人口</td>
		            						<td><input name="emp_inhabitant" type="text" style="width:90%"></td>
		            						<td>外籍人士</td>
		            						<td><input name="emp_foreigners" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>联系电话</td>
		            						<td><input name="emp_telphone" type="text" style="width:90%" ></td>
		            						<td>手机号码</td>
		            						<td><input name="emp_mobilephone" type="text" style="width:90%"></td>
		            						<td>电子邮件</td>
		            						<td><input name="emp_email" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>家庭地址</td>
		            						<td colspan="3"><input name="emp_home_address" type="text" style="width:96%" ></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>特长</td>
		            						<td colspan="3"><input name="emp_speciality" type="text" style="width:96%" ></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>所属部门</td>
		            						<td colspan="3"><input name="emp_department" type="text" style="width:96%" ></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>职称</td>
		            						<td><input name="emp_academic_title" type="text" style="width:90%" ></td>
		            						<td>职务</td>
		            						<td><input name="emp_job" type="text" style="width:90%"></td>
		            						<td>等级</td>
		            						<td><input name="emp_grade" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>在职类别</td>
		            						<td><input name="emp_job_category" type="text" style="width:90%" ></td>
		            						<td>工种</td>
		            						<td><input name="emp_work_category" type="text" style="width:90%"></td>
		            						<td>参加工作时间</td>
		            						<td><input name="emp_hiredate" type="date" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>调入时间</td>
		            						<td><input name="emp_transfer_time" type="date" style="width:90%" ></td>
		            						<td>总工龄</td>
		            						<td><input name="emp_sum_seniority" type="text" style="width:90%"></td>
		            						<td>本单位工龄</td>
		            						<td><input name="emp_unit_seniorty" type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>银行帐号</td>
		            						<td colspan="3"><input name="emp_bank_account" type="text" style="width:96%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>基本工资</td>
		            						<td><input name="emp_base_salary" type="text" style="width:90%"></td>
		            						<td>录入时间</td>
		            						<td><input name="emp_register_time" type="date" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td></td><td><input type="submit" value="提交" style="width:50px"/></td>
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
					alert('${requestScope.MESSAGE}');
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>
		});
	</script>
	
</body>
</html>