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
		    	var tip = $("#tip").text();
		    	var cerTip = $("#cerTip").text();
		    	var certificateId=$("#certificateId").val();
		        var certificateName=$("#certificateName").val(); 
		        var certificateOffice=$("#certificateOffice").val();
		        var certificateIsDeadline=$("#certificateIsDeadline").val();
		        var certificateType=$("#certificateType").val(); 
		        var empId=$("#empId").val(); 
		        if((certificateName.trim().length != 0 )&&(certificateType.trim().length != 0 )&&(certificateOffice.trim().length != 0)
		        		&& (empId.trim().length != 0 ) && (certificateIsDeadline.trim().length != 0 ) && (certificateId.trim().length != 0 ) ){
		        	if ( tip == "有改员工"){
		        		if ( cerTip == "没有改证照编号,可以插入"){
		        			return true;
		        		}else{
		        			alert("已经有改证照编号");
		        			return false;
		        		}
		        		
		        	}else{
		        		alert("没有改员工");
		        		return false;
		        	}
		        	
		        }else{
		        	alert("请输入完整信息");
		        	return false;
		        }
		    }
	    	
	    </script>

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/certificate/add" method=post onsubmit="return check()">
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
		            						
		            						<td>员工编号</td>
		            						<td><input  id="empId" name="empId"  type="text"  style="width:90%" ></td>
		            						<td id="tip"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>证照编号</td>
		            						<td><input name="certificateId"  id="certificateId" type="text" width:90%" ></td>
		            						<td id="cerTip"></td>
		            						<td>证照名称</td>
		            						<td><input  id="certificateName" name="certificateName"  type="text"  style="width:90%" ></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>证照类型</td>
		            						<td><input name="certificateType" id="certificateType" type="text" style="width:90%" ></td>
		            						<td>有无期限</td>  
		            						<td>	
		            							<select name="certificateIsDeadline" id="certificateIsDeadline" style="width:90%;height:100%;display:block">
		            								<option value="有" selected>有</option>
		            								<option value="无">无</option>
		            							</select>
		            						</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>发证机关</td>
		            						<td><input name="certificateOffice" type="text" id="certificateOffice" style="width:90%" ></td>
		            						<td>取证日期</td>
		            						<td><input name="certificateGetDate" type="date" style="width:90%" ></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>生效日期</td>
		            						<td><input name="certificateEffectiveDate" type="date" style="width:90%" ></td>
		            						<td>到期日期</td>
		            						<td><input name="certificateDeadline" type="date" style="width:90%" ></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td rowspan="1">备注</td>
		            						<td colspan="3" rowspan="7">
		            							<textarea name="certificateNotes" rows="6" cols="" style="width:95%" ></textarea>
		            						</td>
		            					</tr>
		            					<tr><td rowspan="6"></td></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr><td></td><td><input type="submit" value="保存"/></td><td></td><td></td></tr>
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
	<script>
		$(document).ready(function(){
			$("#empId").keyup(function(){
				var empId = $("#empId").val();
				$.post(
						"${pageContext.request.contextPath}/certificate/check/emp/" + empId,
						function(result){
							if (result == "false"){
								$("#tip").text("没有改员工")
							}else{
								$("#tip").text("有改员工");
							}
						}
				)
			})
			
			
			$("#certificateId").keyup(function(){
				
				var certificateId = $("#certificateId").val();
				$.post(
						"${pageContext.request.contextPath}/certificate/check/" + certificateId,
						function(result){
							if ( result == "false"){
								$("#cerTip").text("没有改证照编号,可以插入");
							}else{
								$("#cerTip").text("已经有改编号");
							}
						}
				)
				
				
			})
			
			
		})
	</script>
</body>
</html>