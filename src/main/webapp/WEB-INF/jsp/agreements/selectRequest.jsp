<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改合同信息</title>
    <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            href="${pageContext.request.contextPath }/css/index_body_Manage.css" type=text/css rel=stylesheet><LINK
            href="${pageContext.request.contextPath }/css/index_body_Style.css" type=text/css rel=stylesheet>
    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/FrameDiv.js"></SCRIPT>

    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<style type="text/css">
		#nox{
			width:13%;
			padding:0 20%;
		}
	</style>
	<style>
		*{
		padding:0;
		margin:0;
		}
	</style>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<script type="text/javascript">
	    function check(){
	    	var emp_name = $("#emp_name").is(':checked');
			if(emp_name == false){
				$("[name='emp_name']").val(null);
				$("[name='emp_name1']").val(null);
				$("[name='semp_name']").val(null);
			}
			var emp_id = $("#emp_id").is(':checked');
			if(emp_id == false){
				$("[name='emp_id']").val(null);
				$("[name='emp_id1']").val(null);
				$("[name='semp_id']").val(null);
			}
			var emp_department = $("#emp_department").is(':checked');
			if(emp_department == false){
				$("[name='emp_department']").val(null);
				$("[name='emp_department1']").val(null);
				$("[name='semp_department']").val(null);
			}
			var emp_job = $("#emp_job").is(':checked');
			if(emp_job == false){
				$("[name='emp_job']").val(null);
				$("[name='semp_job']").val(null);
				$("[name='emp_job1']").val(null);
			}
			var emp_academic_title = $("#emp_academic_title").is(':checked');
			if(emp_academic_title == false){
				$("[name='emp_academic_title']").val(null);
				$("[name='emp_academic_title1']").val(null);
				$("[name='semp_academic_title']").val(null);
			}
			var emp_work_category = $("#emp_work_category").is(':checked');
			if(emp_work_category == false){
				$("[name='emp_work_category']").val(null);
				$("[name='semp_work_category']").val(null);
				$("[name='emp_work_category1']").val(null);
			}
			var emp_grade = $("#emp_grade").is(':checked');
			if(emp_grade == false){
				$("[name='emp_grade']").val(null);
				$("[name='semp_grade']").val(null);
				$("[name='emp_grade1']").val(null);
			}
			var emp_idnumber = $("#emp_idnumber").is(':checked');
			if(emp_idnumber == false){
				$("[name='emp_idnumber']").val(null);
				$("[name='emp_idnumber1']").val(null);
				$("[name='semp_idnumber']").val(null);
			}
			var agreementno = $("#agreementno").is(':checked');
			if(agreementno == false){
				$("[name='agreementno']").val(null);
				$("[name='agreementno1']").val(null);
				$("[name='sagreementno']").val(null);
			}
			var aname = $("#aname").is(':checked');
			if(aname == false){
				$("[name='aname']").val(null);
				$("[name='aname1']").val(null);
				$("[name='saname']").val(null);
			}
			var atype = $("#atype").is(':checked');
			if(atype == false){
				$("[name='atype']").val(null);
				$("[name='atype1']").val(null);
				$("[name='satype']").val(null);
			}
			var regular = $("#regular").is(':checked');
			if(regular == false){
				$("[name='regular']").val(null);
				$("[name='regular1']").val(null);
				$("[name='sregular']").val(null);
			}
			var signdata = $("#signdata").is(':checked');
			if(signdata == false){
				$("[name='signdata']").val(null);
				$("[name='signdata1']").val(null);
				$("[name='ssigndata']").val(null);
			}
			var probation_period = $("#probation_period").is(':checked');
			if(probation_period == false){
				$("[name='probation_period']").val(null);
				$("[name='probation_period1']").val(null);
				$("[name='sprobation_period']").val(null);
			}
			var probation_begindata = $("#probation_begindata").is(':checked');
			if(probation_begindata == false){
				$("[name='sprobation_begindata']").val(null);
				$("[name='probation_begindata']").val(null);
				$("[name='probation_begindata1']").val(null);
			}
			var probation_sal = $("#probation_sal").is(':checked');
			if(probation_sal == false){
				$("[name='probation_sal']").val(null);
				$("[name='probation_sal1']").val(null);
				$("[name='sprobation_sal']").val(null);
			}
			var probation_overdata = $("#probation_overdata").is(':checked');
			if(probation_overdata == false){
				$("[name='sprobation_overdata']").val(null);
				$("[name='probation_overdata']").val(null);
				$("[name='probation_overdata1']").val(null);
			}
			var agreementperiod = $("#agreementperiod").is(':checked');
			if(agreementperiod == false){
				$("[name='agreementperiod']").val(null);
				$("[name='agreementperiod1']").val(null);
				$("[name='sagreementperiod']").val(null);
			}
			var starttime = $("#starttime").is(':checked');
			if(starttime == false){
				$("[name='starttime']").val(null);
				$("[name='sstarttime']").val(null);
				$("[name='starttime1']").val(null);
			}
			var regularsal = $("#regularsal").is(':checked');
			if(regularsal == false){
				$("[name='regularsal']").val(null);
				$("[name='regularsal1']").val(null);
				$("[name='sregularsal']").val(null);
			}
			var endtime = $("#endtime").is(':checked');
			if(endtime == false){
				$("[name='endtime']").val(null);
				$("[name='endtime1']").val(null);
				$("[name='sendtime']").val(null);
			}
			var notes = $("#notes").is(':checked');
			if(notes == false){
				$("[name='notes']").val(null);
				$("[name='notes1']").val(null);
				$("[name='snotes']").val(null);
			}
	    }
	</script>
	    
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/agreements/selectResult" method="post" onsubmit="return check()">
		<br />
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	    <div id="nox">
			<input type="submit" value="开始查询"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button onclick="window.history.back(-1); "><a >取消返回</a></button>
		</div>
		<hr />
	        <TBODY>
		        <TR>
		            <TD width=15>
		            	<IMG src="${pageContext.request.contextPath }/images/new_019.jpg" border=0>
		            </TD>
		            <TD width="100%" background=${pageContext.request.contextPath }/images/new_020.jpg height=20>
		            </TD>
		            <TD width=15>
		            	<IMG src="${pageContext.request.contextPath }/images/new_021.jpg" border=0>
		            </TD>
		        </TR>
	        </TBODY>
	    </TABLE>
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg>
		            	<IMG src="${pageContext.request.contextPath }/images/new_022.jpg" border=0>
		            </TD>
		            <TD vAlign=top width="100%" bgColor=#ffffff>
		            	<table  width="100%" >
		            		<tr  width="100%">
		            			<td  width="50%">
		            				<table width="100%" bgColor=pink >
		            					<tr><th colspan="4">合同信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_name" type="checkbox">员工姓名</td>
		            						<td width="10%">
												<select name="semp_name" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_name" type="text" style="width:90%" ></td>
		            						<td><input name="emp_name1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_id" type="checkbox">员工编号</td>
		            						<td width="10%">
												<select name="semp_id" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_id" type="text" style="width:90%" ></td>
		            						<td><input name="emp_id2" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_department" type="checkbox">所属部门</td>
		            						<td width="10%">
												<select name="semp_department" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_department" type="text" style="width:90%" ></td>
		            						<td><input name="emp_department1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_job" type="checkbox">职务</td>
		            						<td width="10%">
												<select name="semp_job" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_job" type="text" style="width:90%" ></td>
		            						<td><input name="emp_job1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_academic_title" type="checkbox">职称</td>
		            						<td width="10%">
												<select name="semp_academic_title" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_academic_title" type="text" style="width:90%" ></td>
		            						<td><input name="emp_academic_title1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_work_category" type="checkbox">工种</td>
		            						<td width="10%">
												<select name="semp_work_category" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_work_category" type="text" style="width:90%" ></td>
		            						<td><input name="emp_work_category1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_grade" type="checkbox">等级</td>
		            						<td width="10%">
												<select name="semp_grade" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_grade" type="text" style="width:90%" ></td>
		            						<td><input name="emp_grade1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="emp_idnumber" type="checkbox">身份证号</td>
		            						<td width="10%">
												<select name="semp_idnumber" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="emp_idnumber" type="text" style="width:90%" ></td>
		            						<td><input name="emp_idnumber1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="agreementno" type="checkbox">合同编号</td>
		            						<td width="10%">
												<select name="sagreementno" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="agreementno" type="text" style="width:90%" ></td>
		            						<td><input name="agreementno1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="aname" type="checkbox">合同名称</td>
		            						<td width="10%">
												<select name="saname" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="aname" type="text" style="width:90%" ></td>
		            						<td><input name="aname1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="atype" type="checkbox">合同类型</td>
		            						<td width="10%">
												<select name="satype" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="atype" type="text" style="width:90%" ></td>
		            						<td><input name="atype1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="regular" type="checkbox">是否转正</td>
		            						<td width="10%">
												<select name="sregular" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="regular" type="text" style="width:90%" ></td>
		            						<td><input name="regular1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="signdata" type="checkbox">签约时间</td>
		            						<td width="10%">
												<select name="ssigndata" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="signdata" type="date" style="width:90%" ></td>
		            						<td><input name="signdata1" type="date" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="probation_period" type="checkbox">试用期限</td>
		            						<td width="10%">
												<select name="sprobation_period" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="probation_period" type="text" style="width:90%" ></td>
		            						<td><input name="probation_period1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="probation_begindata" type="checkbox">试用生效时间</td>
		            						<td width="10%">
												<select name="sprobation_begindata" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="probation_begindata" type="date" style="width:90%" ></td>
		            						<td><input name="probation_begindata1" type="date" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="probation_sal" type="checkbox">试用工资</td>
		            						<td width="10%">
												<select name="sprobation_sal" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="probation_sal" type="text" style="width:90%" ></td>
		            						<td><input name="probation_sal1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="probation_overdata" type="checkbox">试用到期时间</td>
		            						<td width="10%">
												<select name="sprobation_overdata" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="probation_overdata" type="date" style="width:90%" ></td>
		            						<td><input name="probation_overdata1" type="date" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="agreementperiod" type="checkbox">合同期限</td>
		            						<td width="10%">
												<select name="sagreementperiod" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="agreementperiod" type="text" style="width:90%" ></td>
		            						<td><input name="agreementperiod1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="starttime" type="checkbox">合同生效时间</td>
		            						<td width="10%">
												<select name="sstarttime" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="starttime" type="date" style="width:90%" ></td>
		            						<td><input name="starttime1" type="date" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="regularsal" type="checkbox">转正工资</td>
		            						<td width="10%">
												<select name="sregularsal" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="regularsal" type="text" style="width:90%" ></td>
		            						<td><input name="regularsal1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="endtime" type="checkbox">到期时间</td>
		            						<td width="10%">
												<select name="sendtime" style="width:90%;height:100%;display:block" >
													  <option value ="=" selected="selected">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="endtime" type="text" style="width:90%" ></td>
		            						<td><input name="endtime1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input id="notes" type="checkbox">合同备注</td>
		            						<td width="10%">
												<select name="snotes" style="width:90%;height:100%;display:block" >
													  <option value ="=">=</option>
													  <option value ="&lt;&gt;">&lt;&gt;</option>
													  <option value ="&gt;">&gt;</option>
													  <option value ="&gt;=">&gt;=</option>
													  <option value ="&lt;">&lt;</option>
													  <option value ="&lt;=">&lt;=</option>
													  <option value ="介于">介于</option>
													  <option value ="形如" selected="selected">形如</option>
													  <option value ="有值">有值</option>
													  <option value ="无值">无值</option>
												</select>
											</td>
		            						<td><input name="notes" type="text" style="width:90%" ></td>
		            						<td><input name="notes1" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            				</table>
		            			</td>
		            			<td>			  
		            			</td>
		            		</tr>
		            	</table>
		            </TD>
		            <TD width=15 background=${pageContext.request.contextPath }/images/new_023.jpg>
		            	<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0> 
		            </TD>
		        </TR>
	        </TBODY>
	    </TABLE>
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
		            <TD align=middle width="100%" background=${pageContext.request.contextPath }/images/new_025.jpg height=15></TD>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg" border=0></TD>
		        </TR>
	       	</TBODY>
	    </TABLE>
	</FORM>
</body>
</html>