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
    

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action=??? method=post>
	    <SCRIPT type=text/javascript>
	        //<![CDATA[
	        var theForm = document.forms['form1'];
	        if (!theForm) {
	            theForm = document.form1;
	        }
	        function __doPostBack(eventTarget, eventArgument) {
	            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
	                theForm.__EVENTTARGET.value = eventTarget;
	                theForm.__EVENTARGUMENT.value = eventArgument;
	                theForm.submit();
	            }
	        }
	        //]]>
	    </SCRIPT>
	    <script>
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
	    </script>

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
		            						<td width="25%"><input id="good_id" disabled="disabled" type="text" style="width:90%" ></td>
		            						<td width="25%">物品名称</td>
		            						<td width="25%"><input type="text" style="width:90%"></td></tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>物品类型</td>
		            						<td>
		            							<select style="width:90%;height:100%;display:block" >
													  <option value ="电脑类">电脑类</option>
													  <option value ="文具">文具类</option>
													  <option value="服装类">服装类</option>
													  <option value="饮料类">饮料类</option>
													  <option value="食品类">食品类</option>
													  <option value="汽车类">汽车类</option>
												</select>
											</td>
											<td>单价</td>
											<td><input id="price" type="number" style="width:90%"></td>
										</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>数量</td>
		            						<td><input id="count" type="number" style="width:90%"></td>
		            						<td>金额</td>
		            						<td><input id="sumPrice" disabled="disabled" type="number" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td>计算库存</td>
		            						<td><input type="number" style="width:90%"></td>
		            						<td>登记时间</td>
		            						<td><input type="date" style="width:90%"></td>
		            					</tr>
		            					<tr><td colspan="4">&nbsp;</td></tr>
		            					<tr>
		            						<td rowspan="1">备注</td>
		            						<td colspan="3" rowspan="7">
		            							<textarea rows="6" cols="" style="width:95%"></textarea>
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