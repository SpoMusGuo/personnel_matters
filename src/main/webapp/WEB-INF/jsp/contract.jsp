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
	<script type="text/javascript">
		$(function(){
			var open = $(".open");
			open.click(function(){
				var ul = $(this).siblings("ul");
				if(ul.css("visibility")=="hidden"){
					$(".open").siblings("ul").css("visibility","hidden");
					ul.css("visibility","visible");
				}else{
					ul.css("visibility","hidden");
				}
			})
			$("#selectPage").change(function(){
	        	var index=$(this).children('option:selected').val();
	        	if("${type}"=="list"){
	        		window.location.href='${pageContext.request.contextPath}/commonlyusedquery/contract/'+index;
	        	}
	        	
        	
        	})
		})

	</script>
	<SCRIPT type=text/javascript>
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
	</SCRIPT>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<FORM id=form1 name=form1 action=??? method=post>	    
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
		                <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
			                <div class="place">
			                 	<TR>
			                        <TD class=manageHead>当前位置： &gt; 合同即将到期的员工信息</TD>
			                    </TR>
			                    <TR>
			                     	<TD height=1></TD>
			                    </TR>
			                </div>
		                </TABLE>
		                <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
		                    <TBODY>
			                    <TR>
			                        <TD height=25>
			                            <%-- <TABLE cellSpacing=0 cellPadding=2 border=0>
			                                <TBODY>
				                                <TR>
				                                	<div class="add">
				                                		<a href="${pageContext.request.contextPath }/good/addGood"><INPUT class=button id="add" type=button value=新增 name=add></a>
				                                	</div>
					                                <div class="search">
					                                    <img src="${pageContext.request.contextPath }/images/icon_search.gif">
					                                    <input name="txtSearch" type="text" size="30" id="txtSearch">
					                                    <INPUT class=button id="search" type=button value=搜索 name=add>
					                                    <a id="chaxun" style="text-decoration: underline; color:black;cursor:pointer">查询条件...</a>
					                                </div>
				                                    <span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 物品资料信息 ]</span>
				                                </TR>
			                                </TBODY>
			                            </TABLE> --%>
			                        </TD>
			                    </TR>
			                    <TR>
			                        <TD>
			                            <TABLE id=grid cellSpacing=1 cellPadding=2 rules=all border=0>
			                                <TBODY>
			                                <TR class="title" tyle="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none;">
			                                    <!-- <TD style="width:48px;white-space:nowrap;font-size:20;color:black;">员工编号</TD>	 -->		                             
			                                    <td>员工编号</td>
												<td>员工姓名</td>
												<td>员工部门</td>
												<!-- <TD style="width:48px;white-space:nowrap;font-size:20;color:black;">合同编号</TD>	 -->
												<td>合同编号</td>
												<td>合同名字</td>
												<td>合同类型</td>
												<td>合同到期时间</td>
												
			                                </TR>
			                                <c:forEach items="${pager.datas}" var="contract">
				                                <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">			                                    
				                                   	                                    
				                                    <td>${contract.emp_id}</td>
													<td>${contract.emp_name}</td>
													<td>${contract.emp_department}</td>
													<td>${contract.agreementno}</td>
													<td>${contract.aname}</td>
													<td>${contract.atype}</td>
													
													<td><fmt:formatDate value="${contract.endtime}"  pattern="yyyy-MM-dd"/></td>
													
				                                </TR>
			                               	</c:forEach>
			                              </TBODY>
			                          </TABLE>
			                       </TD>
			                   </TR>
			                   <TR>
			                       <TD>
				                   	   <SPAN id=pagelink>
				           				   <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">				           				 				           				   	
				           					 	[<B>${pager.records}</B>]条记录共[${pager.pagecount}]页 								                
								                <c:if test="${pager.pageindex==pager.pagecount}">
								                	当前是[${pager.startindex+1}-${pager.records}]条 
								                </c:if>
								                <c:if test="${pager.pageindex!=pager.pagecount}">
								                	当前是[${pager.startindex+1}-${pager.startindex+pager.pagesize}]条 
								                </c:if>		               		 
								                <c:if test="${pager.pageindex!=1 }">
								    				<c:if test="${type=='list'}">
								    					[<A href="${pageContext.request.contextPath}/commonlyusedquery/contract/${pager.pageindex-1}">前一页</A>]
								    				</c:if>
								    				
				           				   		</c:if>
								                <c:forEach begin="1" end="${pager.pagecount}" var="i">
								                	<c:if test="${i==pager.pageindex}">
								                		<B><c:out value="${i}"/></B> 
								                	</c:if>
								                	<c:if test="${i!=pager.pageindex}">								                		
														<c:if test="${type=='list'}">
								    						<A class="" href="${pageContext.request.contextPath}/commonlyusedquery/contract/${i}"><c:out value="${i}"/></A> 
									    				</c:if>
									           	
								                	</c:if>								                	
								                </c:forEach>
								                <c:if test="${pager.pageindex!=pager.pagecount}">								                	
								                	<c:if test="${type=='list'}">
								    					[<A class="" href="${pageContext.request.contextPath}/commonlyusedquery/contract/${pager.pageindex+1}">后一页</A>]
								    				</c:if>

								                </c:if>						             
								                
								                <SELECT id="selectPage">
								                	<c:forEach begin="1" end="${pager.pagecount}" var="i">
									                	<c:if test="${i==pager.pageindex}">
									                		<OPTION value="${i}" selected>第<c:out value="${i}"/>页</OPTION> 
									                	</c:if>
									                	<c:if test="${i!=pager.pageindex}">
									                		<OPTION value="${i}" >第<c:out value="${i}"/>页</OPTION>
									                	</c:if>								                	
								                	</c:forEach>
									               
								                </SELECT>
								           </DIV>
				              		   </SPAN>
			             		   </TD>
			            	   </TR>
		           		</TBODY>
		          </TABLE>
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