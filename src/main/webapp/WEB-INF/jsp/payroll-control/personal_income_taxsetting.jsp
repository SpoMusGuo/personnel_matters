<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			                        <TD class=manageHead>当前位置：工资管理 &gt; 个人所得税设置 </TD>
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
					                                    <INPUT class=button id="add" type=button value=搜索 name=add>
					                                    <a id="" href="" style="text-decoration: underline; color:black">查询条件...</a>
					                                </div>
				                                    <span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 个人所得税设置 ]</span>
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
			                                    <TD style="width:28px;">全选</TD>
			                                    <TD style="width:48px;white-space:nowrap;font-size:20;color:#FF9900;"></TD>
			                                    <TD>锁状态</TD>
			                                    <TD>级数</TD>
			                                    <TD>起始金额</TD>
			                                    <TD>结束金额</TD>
			                                    <TD>税率</TD>
			                                    <TD>速扣</TD>
			                                </TR>
			                                <c:forEach items="${taxGrades}" var="taxGrade">
			                                	 <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
			                                    <TD style="width:28px;font-size:20;color:#FF9900;"><input name="" type="checkbox" id="" style="WIDTH: 28px"></TD>
			                                    <TD>
			                                    	<A class="open" href="javascript:" target=_blank style="text-decoration: underline;">打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif"></A> 
			                                    	<ul style="visibility: hidden;">
			                                    		<li><img></img><a href="#">修改</a></li>
			                                    		<li><a href="${pageContext.request.contextPath}/removeTaxGrade/${taxGrade.taxgrade_grade}">删除</a></li>
			                                    		<li><a href="#">上锁</a></li>
			                                    	</ul>
			                                    </TD>
			                                    <TD>        </TD>
			                                    <TD>${ taxGrade.taxgrade_grade}</TD>
			                                    <TD>${ taxGrade.taxgrade_start}</TD>
			                                    <TD>${ taxGrade.taxgrade_end}</TD>
			                                    <TD>${ taxGrade.taxgrade_rate}</TD>
			                                    <TD>${ taxGrade.taxgrade_speed}</TD>
			                                 </TR>
			                                </c:forEach>
			                               
			                               
			                              </TBODY>
			                          </TABLE>
			                       </TD>
			                   </TR>
			                    <TR>
			                        <TD>
				                        <SPAN id=pagelink>
				           					 <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">[<B>${taxGrades_sum}</B>]条记录
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
