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
				if(ul.css("visibility")=="visible"){
					ul.css("visibility","hidden");
				}else{
					ul.css("visibility","visible");
				}
				
				
			})
		})

	</script>
    <SCRIPT language=javascript>
        function selectallbox()
        {
            var list = document.getElementsByName('setlist');
            var listAllValue='';
            if(document.getElementById('checkAll').checked)
            {
                for(var i=0;i<list.length;i++)
                {
                    list[i].checked = true;
                    if(listAllValue=='')
                        listAllValue=list[i].value;
                    else
                        listAllValue = listAllValue + ',' + list[i].value;
                }
                document.getElementById('boxListValue').value=listAllValue;
            }
            else
            {
                for(var i=0;i<list.length;i++)
                {
                    list[i].checked = false;
                }
                document.getElementById('boxListValue').value='';
            }
        }
    </SCRIPT>

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
	        $(function(){
	        	$("#search").click(function(){
	        		var value=$("#txtSearch").val();
	        		if(value==null||value==""){
	       				value=" ";
	       			}
	        		window.location.href="${pageContext.request.contextPath }/good/likeGood/"+value+"/1";
	        	});
	        })
	    </SCRIPT>

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
			                        <TD class=manageHead>当前位置： &gt; 物品资料信息 </TD>
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
			                            <TABLE cellSpacing=0 cellPadding=2 border=0>
			                                <TBODY>
				                                <TR>
				                                	<div class="add">
				                                		<a href="${pageContext.request.contextPath }/good/addGood"><INPUT class=button id="add" type=button value=新增 name=add></a>
				                                	</div>
					                                <div class="search">
					                                    <img src="${pageContext.request.contextPath }/images/icon_search.gif">
					                                    <input name="txtSearch" type="text" size="30" id="txtSearch">
					                                    <INPUT class=button id="search" type=button value=搜索 name=add>
					                                    <a id="" href="" style="text-decoration: underline; color:black">查询条件...</a>
					                                </div>
				                                    <span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 物品资料信息 ]</span>
				                                </TR>
			                                </TBODY>
			                            </TABLE>
			                        </TD>
			                    </TR>
			                    <TR>
			                        <TD>
			                            <TABLE id=grid cellSpacing=1 cellPadding=2 rules=all border=0>
			                                <TBODY>
			                                <TR class="title" tyle="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none;">
			                                    <TD style="width:48px;white-space:nowrap;font-size:20;color:#FF9900;"></TD>
			                                    <TD>锁状态</TD>
			                                    <td>物品编号</td>
												<td>物品名称</td>
												<td>物品类型</td>
												<td>单价</td>
												<td>数量</td>
												<td>金额</td>
												<td>计算库存</td>
												<td>登记时间</td>
												<td>备注</td>
			                                </TR>
			                                <c:forEach items="${pager.datas}" var="good">
				                                <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">			                                    
				                                    <TD>
				                                    	<A class="open" href="javascript:showMenu()" target=_blank style="text-decoration: underline;">
				                                    		打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif">
				                                    	</A> 
				                                    	<ul style="visibility: hidden;">
				                                    		<%-- <li><img></img><a href="${pageContext.request.contextPath }/good/editGood/${good.good_id}">修改</a></li> --%>
				                                    		<%-- <li><a href="${pageContext.request.contextPath }/good/deleteGood/${good.good_id}">删除</a></li> --%>
				                                    		<li><a href="#">上锁</a></li>
				                                    	</ul>
				                                    </TD>
				                                    <TD></TD>
				                                    <td>${good.emp_id}</td>
													<td>${good.emp_name}</td>
													<td>${good.emp_department}</td>
													
													
													
													
													<td><fmt:formatDate value="${good.certificate_deadline}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
													
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
				           				   			[<A href="${pageContext.request.contextPath}/driving/11/${pager.pageindex-1}">前一页</A>]
				           				   		</c:if>
								                <c:forEach begin="1" end="${pager.pagecount}" var="i">
								                	<c:if test="${i==pager.pageindex}">
								                		<B><c:out value="${i}"/></B> 
								                	</c:if>
								                	<c:if test="${i!=pager.pageindex}">
								                		<A class="" href="${pageContext.request.contextPath}/driving/11/${i}"><c:out value="${i}"/></A> 
								                	</c:if>								                	
								                </c:forEach>
								                <c:if test="${pager.pageindex!=pager.pagecount}">
								                	[<A class="" href="${pageContext.request.contextPath}/driving/11/${pager.pageindex+1}">后一页</A>]
								                </c:if>						             
								                
								                <SELECT>
								                	<c:forEach begin="1" end="${pager.pagecount}" var="i">
									                	<c:if test="${i==pager.pageindex}">
									                		<OPTION value="${i}" selected>第<c:out value="${i}"/>页</OPTION> 
									                	</c:if>
									                	<c:if test="${i!=pager.pageindex}">
									                		<OPTION value="${i}">第<c:out value="${i}"/>页</OPTION>
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