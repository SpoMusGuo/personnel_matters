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
			                        <TD class=manageHead>当前位置： &gt; 证照信息表 </TD>
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
					                                    <form action="${pageContext.request.contextPath }/certificate/search/" method="post" onsubmit="return search()" id="searchform">
						                                    <input name="searchText" type="text" size="30" id="txtSearch">
						                                    <INPUT class="button" id="add" type="submit" value="搜索" name="add">
					                                    </form>
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
			                                    
			                                    <TD>员工姓名</TD>
			                                    <td>员工编号</td>
												<td>所属部门</td>
												<td>职务</td>
												<td>职称</td>
												<td>工种</td>
												<td>等级</td>
												<td>身份证号</td>
												<td>证照编号</td>
												<td>证照名称</td>
												<td>证照类型</td>
												<td>有无期限</td>
												<td>发证机关</td>
												<td>取证日期</td>
												<td>生效日期</td>
												<td>到期日期</td>
												<td>备注</td>
												<td>证照图片</td>
			                                </TR>
			                                <c:forEach items="${pagers.certificates}" var="certificate">
				                                <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">			                                    
				                                    <TD>
				                                    	<A class="open" href="javascript:showMenu()" target=_blank style="text-decoration: underline;">
				                                    		打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif">
				                                    	</A> 
				                                    	<ul style="visibility: hidden;">
				                                    		<li><img></img><a href="#">修改</a></li>
				                                    		<li><a href="${pageContext.request.contextPath }/certificate/delete/${certificate.certificateId}">删除</a></li>
				                                    		<li><a href="#">上锁</a></li>
				                                    	</ul>
				                                    </TD>
				                                    <td>${certificate.emp.empName}</td>
													<td>${certificate.emp.empId}</td>
													<td>${certificate.emp.empDepartment}</td>
													<td>${certificate.emp.empJob}</td>
													<td>${certificate.emp.empAcademicTitle}</td>
													<td>${certificate.emp.empWorkCategory}</td>
													<td>${certificate.emp.empGrade}</td>
													<td>${certificate.emp.empIdNumber}</td>
													<td>${certificate.certificateId }</td>
													<td>${certificate.certificateName }</td>
													<td>${certificate.certificateType }</td>
													<td>${certificate.certificateIsDeadline }</td>
													<td>${certificate.certificateOffice }</td>
													<td><fmt:formatDate value="${certificate.certificateGetDate }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
													<td><fmt:formatDate value="${certificate.certificateEffectiveDate }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
													<td><fmt:formatDate value="${certificate.certificateDeadline }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
													<td>${certificate.certificateNotes }</td>
													<td>${certificate.certificatePic }</td>
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
				           					 	[<B>${pagers.rowCount}</B>]条记录共[${pagers.pageCount}]页 
				           					 	<c:choose>
				           					 		<c:when test="${(pagers.rowCount - pagers.startIndex) < pagers.pageSize}">
				           					 			<span>当前是[${pagers.startIndex +1 } - ${pagers.rowCount }]</span>	
				           					 		</c:when>
				           					 		<c:when test="${(pagers.startIndex+1) == pagers.rowCount }">
				           					 			<span>当前是[${pagers.rowCount }]</span>
				           					 		</c:when>
				           					 		<c:otherwise>
				           					 			<span>当前是[${pagers.startIndex +1 } - ${pagers.startIndex+pagers.pageSize }]</span>	
				           					 		</c:otherwise>	
				           					 	</c:choose>
				           			             
								                <c:forEach begin="1" end="${pagers.pageCount }" var="i">
								                	<a href="${pageContext.request.contextPath }/certificate/list/${i}">${i}</a>
								                </c:forEach>
								                <SELECT>
								                	
									               
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
	
	<script type="text/javascript">
		function search(){
			var searchText = $("#txtSearch").val();
			if ( searchText.trim().length == 0){
				alert("不能输入空字符串");
				return false;
			}
			
			var action = $("#searchform").attr("action");
			alert(action);
			action += searchText;
			alert(action);
			$("#searchform").attr("action",action);
		}
	</script>
</body>
</html>