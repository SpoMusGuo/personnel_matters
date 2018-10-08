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
		    	var value1=$("[name='train_name']").val();
		        var value2=$("[name='train_price']").val();
		        var value3=$("[name='train_count']").val();
		        var value4=$("[name='train_repetory']").val();
		        var value5=$("[name='train_register_date']").val();
		        if((value1.trim()!="")&&(value2.trim()!="")&&(value3.trim()!="")&&(value4.trim()!="")&&(value5.trim()!="")){
		        	return true;
		        }else{
		        	alert("请输入完整信息");
		        	return false;
		        }
		    }
	    	$(function(){
	    		$('#train_plan_name').val("${train_plan_name}");
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
	    </script>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action="insertTrain" method=post onsubmit="return check()">	    
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
	    <TABLE cellspacing=0 cellpadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg>
		            	<IMG src="${pageContext.request.contextPath }/images/new_022.jpg" border=0>
		            </TD>
		            <TD vAlign=top width="100%" bgColor=#ffffff>
		            	<table  width="100%" >
		            		<tr  width="100%">
		            			<td  width="50%">
		            				<table width="100%" bgColor=#ffcc99 cellspacing=0 cellpadding=0>
		            					<!-- 
											计划名称	train_plan_name	
											主办部门	train_sponsoring_dept
											培训课程	train_course	
											培训机构	train_organization	
											培训类型	train_type	
											培训形式	train_form	
											培训地址	train_address	
											授课老师	train_teacher	
											授课时数	train_periods	
											起始时间	train_start_time			
											结束时间	train_finish_time			
											计划费用	train_plan_cost
											参加人数	train_join_people
											培训对象	train_object	
										-->
										<tr>
											<th colspan="4">培训计划表</th>
										</tr>
										<tr>
											<td width="10%">计划名称</td>
											<td><input name="train_plan_name"
												id="train_plan_name" type="text" style="width:40%" ></td>
										</tr>
										<tr>
											<td width="10%">主办部门</td>
											<td><select name="train_sponsoring_dept"
												style="width:40.9%">
													<option value="外部机构">外部机构</option>
													<option value="A公司">A公司</option>
													<option value="技术支持部">技术支持部</option>
													<option value="媒体合作部">媒体合作部</option>
													<option value="海外事业部">海外事业部</option>
													<option value="人力资源部">人力资源部</option>
													<option value="一分厂">一分厂</option>
													<option value="设备科">设备科</option>
													<option value="生产科">生产科</option>
													<option value="二分厂">二分厂</option>
													<option value="企管部">企管部</option>
													<option value="行政部">行政部</option>
													<option value="财务部">财务部</option>
													<option value="研发部">研发部</option>
													<option value="销售部">销售部</option>
											</select></td>
										</tr>
										
										
										<tr>
											<td width="10%">培训课程</td>
											<td><select name="train_course"
												style="width: 40.9%;display:inline">
													<option value="MBA工商管理">MBA工商管理</option>
													<option value="网络营销">网络营销</option>
													<option value="网络技术">网络技术</option>
													<option value="口语培训">口语培训</option>
													<option value="职工素质培训">职工素质培训</option>
											</select></td>
										</tr>
										<tr>
											<td width="10%">培训机构</td>
											<td><input name="train_organization" id="orfanization"
												type="text" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">培训类型</td>
											<td><select name="train_type"
												style="width: 40.9%;display:inline">
													<option value="讲座">讲座</option>
													<option value="讨论">讨论</option>
													<option value="演讲">演讲</option>
													<option value="座谈">座谈</option>
											</select></td>
										</tr>
										<tr>
											<td width="10%">培训形式</td>
											<td><select name="train_form"
												style="width: 40.9%;display:inline">
													<option value="内部培训">内部培训</option>
													<option value="国内培训">国内培训</option>
													<option value="国外培训">国外培训</option>
											</select></td>
										</tr>
										<tr>
											<td width="10%">培训地址</td>
											<td><input name="train_address" id="address"
												type="text" style="width: 40%; display:inline-block"></td>
										</tr>
										<tr>
											<td width="10%">授课老师</td>
											<td><input name="train_teacher" id="teacher"
												type="text" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">授课时数</td>
											<td><input name="train_periods" id="periods"
												type="text" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">起始时间</td>
											<td><input name="train_start_time" id="start_time"
												type="date" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">结束时间</td>
											<td><input name="train_finish_time" id="finish_time"
												type="date" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">计划费用</td>
											<td><input name="train_plan_cost" id="plan_cost"
												type="text" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">参加人数</td>
											<td><input name="train_join_people" id="join_people"
												type="text" style="width: 40%"></td>
										</tr>
										<tr>
											<td width="10%">培训对象</td>
											<td><input name="train_object" id="object"
												type="text" style="width: 40%"></td>
										</tr>
										
										
										<tr>
											<td><input type="submit" value="提交"/></td>
										</tr>
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