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
			$("#selectPage").change(function(){
        	var index=$(this).children('option:selected').val(); 
        	window.location.href='${pageContext.request.contextPath}/good/typeGood/${value}/'+index;
        	})
        	$("#close").click(function(){
        		$("#chooseSelect").hide();
        	})
        	$("#chaxun").click(function(){
        		$("#chooseSelect").show();
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
	        $(function(){
	        	$("#search").click(function(){
	        		var value=$("#txtSearch").val();
	       			if(value==null||value==""){
	       				value=" ";
	       			}	        		
	        		window.location.href="${pageContext.request.contextPath }/good/likeGood/"+value+"/1";
	        	});
	        	$("#select_btn").click(function(){
	        		var value=$("#selectType").val();
	        		window.location.href="${pageContext.request.contextPath }/good/typeGood/"+value+"/1";
	        	});
	        })
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
					                                    <a id="chaxun" style="text-decoration: underline; color:black;cursor:pointer">查询条件...</a>
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
				                                    	<ul style="visibility: hidden;height: 50px">
				                                    		<li><img></img><a href="${pageContext.request.contextPath }/good/editGood/${good.good_id}">修改</a></li>
				                                    		<li><a href="${pageContext.request.contextPath }/good/deleteGood/${good.good_id}">删除</a></li>				                                    		
				                                    	</ul>
				                                    </TD>				                                    
				                                    <td>${good.good_id}</td>
													<td>${good.good_name}</td>
													<td>${good.good_type}</td>
													<td>${good.good_price}</td>
													<td>${good.good_count}</td>
													<td>${good.good_count*good.good_price}</td>
													<td>${good.good_repetory}</td>
													<td><fmt:formatDate value="${good.good_register_date}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
													<td>${good.good_notes}</td>
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
				           				   			[<A href="${pageContext.request.contextPath}/good/typeGood/${value}/${pager.pageindex-1}">前一页</A>]
				           				   		</c:if>
								                <c:forEach begin="1" end="${pager.pagecount}" var="i">
								                	<c:if test="${i==pager.pageindex}">
								                		<B><c:out value="${i}"/></B> 
								                	</c:if>
								                	<c:if test="${i!=pager.pageindex}">
								                		<A class="" href="${pageContext.request.contextPath}/good/typeGood/${value}/${i}"><c:out value="${i}"/></A> 
								                	</c:if>								                	
								                </c:forEach>
								                <c:if test="${pager.pageindex!=pager.pagecount}">
								                	[<A class="" href="${pageContext.request.contextPath}/good/typeGood/${value}/${pager.pageindex+1}">后一页</A>]
								                </c:if>						             
								                
								                <SELECT id="selectPage">
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
	<div id="chooseSelect" style="width:150px;background-color:pink;padding:30px 50px 10px 60px;position:fixed;left:35%; top:10%; display:none">
		<form>
			<table border=1>
				<tr>
					<td>种类：</td>
					<td>
						<select id="selectType">
							<option value ="电脑类">电脑类</option>
						  	<option value ="文具类">文具类</option>
						  	<option value="服装类">服装类</option>
						  	<option value="饮料类">饮料类</option>
						  	<option value="食品类">食品类</option>
						  	<option value="汽车类">汽车类</option>	
						</select>
					</td>
				</tr>
			</table>
			<br><br>
			<input id="select_btn" type="button" value="查询">&nbsp;&nbsp;
			<input id="close" type="reset" value="取消">
		</form>	
	</div>
</body>
</html>