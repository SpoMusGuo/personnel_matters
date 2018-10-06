<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            href="${pageContext.request.contextPath }/css/index_body_Manage.css" type=text/css rel=stylesheet><LINK
            href="${pageContext.request.contextPath }/css/index_body_Style.css" type=text/css rel=stylesheet>
    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/FrameDiv.js"></SCRIPT>
    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<style>
		*{
		padding:0;
		margin:0;
		}
	</style>
    <script>
		    function check(){
		    	var certificateName=$("#certificateName").val();
		        var certificateType=$("#certificateType").val(); 
		        var certificateOffice=$("#certificateOffice").val();
		        if((certificateName.trim().length != 0 )&&(certificateType.trim().length != 0 )&&(certificateOffice.trim().length != 0)){
		        	return true;
		        }else{
		        	alert("请输入完整信息");
		        	return false;
		        }
		    }
	    	
	    </script>

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/certificate/update" method=post onsubmit="return check()">
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
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
		            			<td  width="100%">
		            				<table width="80%" bgColor=pink >
		            					<tr><th colspan="4">物品资料信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="12.5%">员工姓名</td>
		            						<td width="12.5%">员工编号</td>
		            						<td width="12.5%">所属部门</td>
		            						<td width="12.5%">职务</td>
		            						<td width="12.5%">职称</td>
		            						<td width="12.5%">工种</td>
		            						<td width="12.5%">等级</td>
		            						<td width="12.5%">身份证号</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empName }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empId }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empDepartment }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empJob }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empAcademicTitle }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empJobCategory }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empGrade }</td>
		            						<td width="12.5%" style="border: 1px solid black;">${certificate.emp.empIdNumber }</td>
										</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>证照编号</td>
		            						<td><input name="certificateId" readonly="readonly"  type="text" width:90%" value="${certificate.certificateId }"></td>
		            						<td>证照名称</td>
		            						<td><input  id="certificateName" name="certificateName"  type="text"  style="width:90%" value="${certificate.certificateName }"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>证照类型</td>
		            						<td><input name="certificateType" id="certificateType" type="text" style="width:90%" value="${certificate.certificateType}"></td>
		            						<td>有无期限</td>  
		            						<td>
		            							
		            							<select name="certificateIsDeadline" style="width:90%;height:100%;display:block">
		            							<c:if test="${certificate.certificateIsDeadline=='有'}" >
		            								<option value="有" selected>有</option>
		            								<option value="无">无</option>
		            							</c:if>
		            							<c:if test="${certificate.certificateIsDeadline=='无'}" >
		            								<option value="有" >有</option>
		            								<option value="无" selected>无</option>
		            							</c:if>	
		            							</select>
		            						</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>发证机关</td>
		            						<td><input name="certificateOffice" type="text" id="certificateOffice" style="width:90%" value="${certificate.certificateOffice}"></td>
		            						<td>取证日期</td>
		            						<td><input name="certificateGetDate" type="date" style="width:90%" value="<fmt:formatDate value="${certificate.certificateGetDate}" pattern="yyyy-MM-dd"/>"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>生效日期</td>
		            						<td><input name="certificateEffectiveDate" type="date" style="width:90%" value='<fmt:formatDate value="${certificate.certificateEffectiveDate }" pattern="yyyy-MM-dd"/>'></td>
		            						<td>到期日期</td>
		            						<td><input name="certificateDeadline" type="date" style="width:90%" value="<fmt:formatDate value="${certificate.certificateDeadline}" pattern="yyyy-MM-dd"/>"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td rowspan="1">备注</td>
		            						<td colspan="3" rowspan="7">
		            							<textarea name="certificateNotes" rows="6" cols="" style="width:95%" > ${certificate.certificateNotes}</textarea>
		            						</td>
		            					</tr>
		            					<tr><td rowspan="6"></td></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td></td><td><input type="submit" value="提交"/></td><td></td><td></td></tr>
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