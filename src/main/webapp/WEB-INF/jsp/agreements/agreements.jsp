<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD id=Head1><TITLE>模板</TITLE>
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

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
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

	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg" border=0></TD>
		            <TD width="100%" background=${pageContext.request.contextPath }/images/new_020.jpg height=20></TD>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
		                              border=0>
		            </TD>
		         </TR>
	         </TBODY>
	    </TABLE>
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
				                                		<INPUT class=button id="add" type=button value=新增 name=add>
				                                	</div>
				                                	
					                                <div class="search">
					                                    <img src="${pageContext.request.contextPath }/images/icon_search.gif">
					                                    <input name="txtSearch" type="text" size="30" id="txtSearch">
					                                    <INPUT class=button id="search" type=button value=搜索 name=add>
					                                    <a id="" href="" style="text-decoration: underline; color:black">查询条件...</a>
					                                </div>
				                                    <span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 合同信息 ]</span>
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
			                                <c:forEach items="${agreements }" var="agreement">
			                           
				                                <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
				                                    <TD>
				                                    	<A class="open" href="javascript:showMenu()" target=_blank style="text-decoration: underline;">打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif"></A> 
				                                    	<ul style="visibility: hidden;">
				                                    		<li><img></img><a href="#">修改</a></li>
				                                    		<li><a href="#">删除</a></li>
				                                    		<c:if test="${agreement.status eq '未锁定' }">
				                                    			<li><a href="${pageContext.request.contextPath}/agreements/lock/${agreement.agreementno}">上锁</a></li>
				                                    		</c:if>
				                                    		<c:if test="${agreement.status eq '已锁定' }">
				                                    			<li><a href="${pageContext.request.contextPath}/agreements/unlock/${agreement.agreementno}">解锁</a></li>
				                                    		</c:if>
				                                    		
				                                    	</ul>
				                                    	
				                                    </TD>
				                                    <TD>${agreement.status }</TD>
				                                    <TD>${agreement.emp_name }</TD>
				                                    <TD>${agreement.emp_id }</TD>
				                                    <TD>${agreement.emp_department }</TD>
				                                    <TD>${agreement.emp_job }</TD>
				                                    <TD>${agreement.emp_academic_title }</TD>
				                                    <TD>${agreement.emp_work_category }</TD>
				                                    <TD>${agreement.emp_grade }</TD>
				                                    <TD>${agreement.emp_idnumber }</TD>
				                                    <TD>${agreement.agreementno }</TD>
				                                    <TD>${agreement.aname }</TD>
				                                    <TD>${agreement.atype }</TD>
				                                    <Td>${agreement.regular }</Td>
				                                    <TD>${agreement.signdata }</TD>
				                                    <TD>${agreement.probation_period }</TD>
				                                    <TD>${agreement.probation_begindata }</TD>
				                                    <TD>${agreement.probation_sal }</TD>
				                                    <TD>${agreement.probation_overdata }</TD>
				                                    <TD>${agreement.agreementperiod }</TD>
				                                    <TD>${agreement.starttime }</TD>
				                                    <TD>${agreement.regularsal }</TD>
				                                    <TD>${agreement.endtime }</TD>
				                                    <TD>${agreement.documents }</TD>
				                                    <TD>${agreement.notes }</TD>
				                                 </TR>
			                                 </c:forEach>
			                              </TBODY>
			                          </TABLE>
			                       </TD>
			                   </TR>
			                    <TR>
			                        <TD>
				                        <SPAN id=pagelink>
				           					 <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">[<B>${fn:length(agreements) }</B>]条记录
				                [${pagenum }]页 当前是[${startCount }-${endCount }]条 
				                <c:if test="${startIndex > 1}">
				                	[<A href="${pageContext.request.contextPath}/agreements/index/${pagenum-1 }">前一页</A>]
				                </c:if>
				                <span id="nox"></span>
				                <script type="text/javascript">
				                	var span = document.getElementById("nox");
				                	var page = ${pagenum };
				                	var nowpage = ${startIndex};
				                	for(var i = 1; i <= page;i++){
				                		if(i == nowpage){
				                			var add = "<strong>"+i+"</strong>";
				                			span.append(add);
				                		}else{
				                			span.append('<A href="${pageContext.request.contextPath}/agreements/index/'+ i +'">i</A>');
				                		}
				                	}
				                </script>
				                <c:if test="${startIndex < pagenum}">
				                	[<A href="${pageContext.request.contextPath}/agreements/index/${pagenum+1 }">后一页</A>]
				                </c:if>
				                
				                <SELECT id="select" onchange="change()">
				                <option>第1页</option>
				                </SELECT>
				                <script type="text/javascript">
				                	var select = document.getElementById("select");
				                	var page = ${pagenum };
				                	for(var j = 1;j <= page ; j++){
				                		select.append("<OPTION value="+ j +">第"+ j +"页</OPTION>");
				                	}
				                	function change(){
				                		function change(){
				                			var index = select.options[select.selectedIndex].value;
				                			var url = "${pageContext.request.contextPath}/agreements/index/"+ index;
				                			window.location.href=url;
				                		}
				                	}
				                </script>
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
	    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
	        <TBODY>
		        <TR>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
		            <TD align=middle width="100%" background=${pageContext.request.contextPath }/images/new_025.jpg
		                height=15></TD>
		            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
		                              border=0>
		            </TD>
		        </TR>
	       	</TBODY>
	    </TABLE>
	</FORM>
</BODY>
</HTML>
