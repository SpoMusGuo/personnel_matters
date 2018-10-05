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
	    	$(function(){
	    		$("[value='${good.good_type}']").attr("selected","selected");
	 	        $('#sumPrice').val("${good.good_price*good.good_count}");
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
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/good/updateGood" method=post onsubmit="return check()">
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
		            					<tr><th colspan="4">物品资料信息</th></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td width="25%">物品编号</td>
		            						<td width="25%"><input name="good_id" id="good_id" readonly="readonly" type="text" style="width:90%" value="${good.good_id}"></td>
		            						<td width="25%">物品名称</td>
		            						<td width="25%"><input name="good_name" type="text" style="width:90%" value="${good.good_name}" ></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>物品类型</td>
		            						<td>
		            							<select name="good_type" style="width:90%;height:100%;display:block" >
													  <option value ="电脑类">电脑类</option>
													  <option value ="文具类">文具类</option>
													  <option value="服装类">服装类</option>
													  <option value="饮料类">饮料类</option>
													  <option value="食品类">食品类</option>
													  <option value="汽车类">汽车类</option>
												</select>
											</td>
											<td>单价</td>
											<td><input name="good_price" id="price" type="number" min="0" step="0.01" style="width:90%" value="${good.good_price}"></td>
										</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>数量</td>
		            						<td><input name="good_count" id="count" type="number" step="0" min="0" style="width:90%" value="${good.good_count}"></td>
		            						<td>金额</td>
		            						<td><input  id="sumPrice" disabled="disabled" type="number" step="0.01" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>计算库存</td>
		            						<td><input name="good_repetory" type="number" style="width:90%" value="${good.good_repetory}"></td>
		            						<td>登记时间</td>
		            						<td><input name="good_register_date" type="date" style="width:90%" value="<fmt:formatDate value="${good.good_register_date}" pattern="yyyy-MM-dd"/>"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td rowspan="1">备注</td>
		            						<td colspan="3" rowspan="7">
		            							<textarea name="good_notes" rows="6" cols="" style="width:95%" > <c:out value="${good.good_notes}"/></textarea>
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