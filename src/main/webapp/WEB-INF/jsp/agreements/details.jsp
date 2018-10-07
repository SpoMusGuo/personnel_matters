<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id=Head1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增合同信息</title>
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
    

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/agreements/add" method="post">
<!-- 	    <SCRIPT>
	    function check(){
	    	var value1=$("[name='good_name']").val();
	        var value2=$("[name='good_price']").val();
	        var value3=$("[name='good_count']").val();
	        var value4=$("[name='good_repetory']").val();
	        var value5=$("[name='good_register_date']").val();
	        if((value1!="")&&(value2!="")&&(value3!="")&&(value4!="")&&(value5!="")){
	        	return true;
	        }else{
	        	alert("请输入完整信息");
	        	return false;
	        }
	    }
	    </SCRIPT> -->
	    <!-- <script>
	    	$(function(){
	    		$('#good_id').val("${good_id}");
	    		$('#price').blur(function () {
		           var price=$(this).val();
		           var count=$('#count').val();
		           $('#sumPrice').val(price*count);
		        });
	    		$('#count').blur(function () {
	    			var price=$('#price').val();
			        var count=$(this).val();
			        $('#sumPrice').val(price*count);
		        });
	    	})
	    </script> -->

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
		            			<td  width="50%">
		            				<table width="100%" bgColor=pink >
		            					<tr><th colspan="4">合同信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">员工姓名</td>
		            						<td width="25%"><input name="emp_name" type="text" style="width:90%" ></td>
		            						<td width="25%">员工编号</td>
		            						<td width="25%"><input name="emp_id" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">所属部门</td>
		            						<td width="25%"><input name="emp_department" type="text" style="width:90%" ></td>
		            						<td width="25%">职务</td>
		            						<td width="25%"><input name="emp_job" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">职称</td>
		            						<td width="25%"><input name="emp_academic_title" type="text" style="width:90%" ></td>
		            						<td width="25%">工种</td>
		            						<td width="25%"><input name="emp_work_category" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">等级</td>
		            						<td width="25%"><input name="emp_grade" type="text" style="width:90%" ></td>
		            						<td width="25%">身份证号</td>
		            						<td width="25%"><input name="emp_idnumber" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">合同编号</td>
		            						<td width="25%"><input name="agreementno" type="text" style="width:90%" ></td>
		            						<td width="25%">合同名称</td>
		            						<td width="25%"><input name="aname" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">合同类型</td>
		            						<td>
		            							<select name="atype" style="width:90%;height:100%;display:block" >
													  <option value ="">无</option>
													  <option value ="劳动合同">劳动合同</option>
													  <option value="劳务合同">劳务合同</option>
												</select>
											</td>
		            						<td width="25%">是否转正</td>
		            						<td>
		            							<select name="regular" style="width:90%;height:100%;display:block" >
													  <option value ="">无</option>
													  <option value ="是">是</option>
													  <option value="否">否</option>
												</select>
											</td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">签约时间</td>
		            						<td width="25%"><input name="signdata" type="date" style="width:90%" ></td>
		            						<td width="25%">试用期限</td>
		            						<td width="25%"><input name="probation_period" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">试用生效时间</td>
		            						<td width="25%"><input name="probation_begindata" type="date" style="width:90%" ></td>
		            						<td width="25%">试用工资</td>
		            						<td width="25%"><input name="probation_sal" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">试用到期时间</td>
		            						<td width="25%"><input name="probation_overdata" type="date" style="width:90%" ></td>
		            						<td width="25%">合同期限</td>
		            						<td width="25%"><input name="agreementperiod" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">合同生效时间</td>
		            						<td width="25%"><input name="starttime" type="date" style="width:90%" ></td>
		            						<td width="25%">转正工资</td>
		            						<td width="25%"><input name="regularsal" type="text" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">合同到期时间</td>
		            						<td width="25%"><input name="endtime" type="date" style="width:90%" ></td>
		            						<td width="25%">合同文件</td>
		            						<td width="25%"><input name="documents" type="file" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td rowspan="1">合同备注</td>
		            						<td colspan="3" rowspan="7">
		            							<textarea name="notes" rows="6" cols="" style="width:95%" ></textarea>
		            						</td>
		            					</tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr></tr>
		            					<tr><td rowspan="6"></td></tr>
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