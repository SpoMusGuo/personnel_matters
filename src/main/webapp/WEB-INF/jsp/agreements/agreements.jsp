<%@page import="com.pm.model.Agreements"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
		                    src="${pageContext.request.contextPath }/images/new_022.jpg" border=0> </TD>
		            <TD vAlign=top width="100%" bgColor=#ffffff>
		                <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
			                <div class="place">
			                 	<TR>
			                        <TD class=manageHead>当前位置：&gt;合同管理</TD>
			                    </TR>
			                    <TR>
			                     	<TD height=1></TD>
			                    </TR>
			                </div>
		                </TABLE>
		                <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%"
		                       align=center border=0>
		                    <TBODY>
			                    <TR>
			                        <TD height=25>
			                            <TABLE cellSpacing=0 cellPadding=2 border=0>
			                                <TBODY>
				                                <TR>
				                                	<div class="add">
				                                		<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><INPUT class=button id="add" type=button value=新增 name=add>
				                                	</div>
				                                	<br />
					                                <div class="search">
					                                <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
					                                    <img src="${pageContext.request.contextPath }/images/icon_search.gif">
					                                    <input name="txtSearch" type="text" size="30" id="txtSearch">
					                                    <INPUT class=button id="add" type=button value=搜索 name=add>
					                                    <a id="" href="" style="text-decoration: underline; color:black">查询条件...</a>
					                                </div>
					                                 <br /> <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
				                                    <span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 合同信息 ]</span>
				                                 </TR>
			                                 </TBODY>
			                              </TABLE>
			                          </TD>
			                    </TR>
			                    <TR>
			                        <TD>
			                        <br />
			                            <TABLE id=grid cellSpacing=1 cellPadding=2 rules=all border=0>
			                                <TBODY>
			                                <TR class="title" tyle="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none;">
			                                    
			                                    <TD style="width:48px;white-space:nowrap;font-size:20;color:#FF9900;"></TD>
			                                    <TD>锁状态</TD>
			                                    <TD>员工姓名</TD>
			                                    <TD>员工编号</TD>
			                                    <TD>所属部门</TD>
			                                    <TD>职务</TD>
			                                    <TD>职称</TD>
			                                    <TD>工种</TD>
			                                    <TD>等级</TD>
			                                    <TD>身份证号</TD>
			                                    <TD>合同编号</TD>
			                                    <TD>合同名称</TD>
			                                    <TD>合同类型</TD>
			                                    <TD>是否转正</TD>
			                                    <TD>签约时间</TD>
			                                    <TD>试用期限</TD>
			                                    <TD>试用生效时间</TD>
			                                    <TD>试用工资</TD>
			                                    <TD>试用到期时间</TD>
			                                    <TD>合同期限</TD>
			                                    <TD>生效时间</TD>
			                                    <TD>转正工资</TD>
			                                    <TD>到期时间</TD>
			                                    <TD>合同文件</TD>
			                                    <TD>合同备注</TD>
			                                </TR>
			                                <c:forEach items="${agreements }" var="agreements">
			                               
			                                <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
			                                    <TD>
			                                    	<A class="open" href="javascript:showMenu()" target=_blank style="text-decoration: underline;">打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif"></A> 
			                                    	<ul style="visibility: hidden;">
			                                    		<li><img></img><a href="#">修改</a></li>
			                                    		<li><a href="#">删除</a></li>
			                                    		<li><a href="#">上锁</a></li>
			                                    	</ul>
			                                    </TD>
			                                    <TD>${agreements.status }</TD>
			                                    <TD>${agreements.emp_name }</TD>
			                                    <TD>${agreements.emp_id }</TD>
			                                    <TD>${agreements.emp_department }</TD>
			                                    <TD>${agreements.emp_job }</TD>
			                                    <TD>${agreements.emp_academic_title }</TD>
			                                    <TD>${agreements.emp_work_category }</TD>
			                                    <TD>${agreements.emp_grade }</TD>
			                                    <TD>${agreements.emp_idnumber }</TD>
			                                    <TD>${agreements.agreementno }</TD>
			                                    <TD>${agreements.aname }</TD>
			                                    <TD>${agreements.atype }</TD>
			                                    <TD>${agreements.signdata }</TD>
			                                    <TD>${agreements.probation_period }</TD>
			                                    <TD>${agreements.probation_begindata }</TD>
			                                    <TD>${agreements.probation_sal }</TD>
			                                    <TD>${agreements.probation_overdata }</TD>
			                                    <TD>${agreements.agreementperiod }</TD>
			                                    <TD>${agreements.starttime }</TD>
			                                    <TD>${agreements.regularsal }</TD>
			                                    <TD>${agreements.endtime }</TD>
			                                    <TD>${agreements.documents }</TD>
			                                    <TD>${agreements.notes }</TD>
			                                 </TR>
			                                </c:forEach>
			                              </TBODY>
			                          </TABLE>
			                       </TD>
			                   </TR>
			                    <TR>
			                        <TD>
				                        <SPAN id=pagelink>
				           					 <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">[<B>84</B>]条记录
				                [6]页 当前是[46-60]条 [<A
				                        href="#">前一页</A>]
				                <A class=""
				                   href="#">1</A>
				                <A class=""
				                   href="#">2</A>
				                <A class=""
				                   href="#">3</A>
				                <B>4</B> 
				                <A class="" href="#">5</A>
				                <A class="" href="#">6</A>
				                [<A class="" href="#">后一页</A>]
				                <SELECT>
				                <OPTION value=1>第1页</OPTION><OPTION value=2>第2页</OPTION>
				                <OPTION value=3>第3页</OPTION><OPTION value=4 selected>第4页</OPTION>
				                <OPTION value=5>第5页</OPTION><OPTION value=6>第6页</OPTION>
				                </SELECT>
				             </DIV>
				              			</SPAN>
			             			</TD>
			            		</TR>
		           		</TBODY>
		          </TABLE>
		         </TD>
		            <TD width=15 background=${pageContext.request.contextPath }/images/new_023.jpg><IMG
		                    src="${pageContext.request.contextPath }/images/new_023.jpg" border=0> 
		            </TD>
		         </TR>
	         </TBODY>
	    </TABLE>
	
	</form>
</body>
</html>