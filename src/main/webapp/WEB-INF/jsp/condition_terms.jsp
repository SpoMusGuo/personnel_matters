<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>常用组合查询条件</title>
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
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/commonlyusedquery/combination" method="post">
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
		            					<tr><th colspan="4">员工信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input type="checkbox">性别</td>
		            						<td width="10%">
												<select name="empSex" style="width:90%;height:100%;display:block" >
													  <option value =""></option>
													  <option value ="男">男</option>
													  <option value ="女">女</option>
												</select>
											</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input type="checkbox">部门</td>
		            						<td width="10%">
												<select name="empDepartment" style="width:90%;height:100%;display:block" >
													  <option value =""></option>
													  <option value ="技术支持部">技术支持部</option>
													  <option value ="广告部">广告部</option>
													  <option value ="人力资源部">人力资源部</option>
													  <option value ="进出口部">进出口部</option>
													  <option value ="国际部">国际部</option>
													  <option value ="研发部">研发部</option>
													  <option value ="营业部">营业部</option>
													  <option value ="总务部">总务部</option>
													  <option value ="销售部">销售部</option>
													  <option value ="财务部">财务部</option>
													  <option value ="人事部">人事部</option>
													  <option value ="策划部">策划部</option>
													  <option value ="公关部">公关部</option>
												</select>
											</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input  type="checkbox">年龄小于</td>
		            						<td width="10%">
												<select name="empAge" style="width:90%;height:100%;display:block" >
													  <option value ="0"></option>
													  <option value ="25">25</option>
													  <option value ="30">30</option>
													  <option value ="35">35</option>
													  <option value ="40">40</option>
													  <option value ="45=">45</option>
													  <option value ="50">50</option>
												</select>
											</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input type="checkbox">学历</td>
		            						<td width="10%">
												<select name="empEducationSt" style="width:90%;height:100%;display:block" >
													  <option value =""></option>
													  <option value ="初中">初中</option>
													  <option value ="高中">高中</option>
													  <option value ="中专">中专</option>
													  <option value ="大专">大专</option>
													  <option value ="本科">本科</option>
												</select>
											</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="15%"><input type="checkbox">婚姻状况</td>
		            						<td width="10%">
												<select name="empMarriage" style="width:90%;height:100%;display:block" >
													  <option value =""></option>
													  <option value ="已婚">已婚</option>
													  <option value ="未婚">未婚</option>
													  <option value ="未知">未知</option>
												</select>
											</td>
		            					</tr>
		            			<tr><td colspan="4">&nbsp;</td></tr>
		            	</table>
		            </TD>
		            <TD width=15>
		            	<%-- <IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0>  --%>
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