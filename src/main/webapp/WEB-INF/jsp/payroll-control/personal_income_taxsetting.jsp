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
					$(".open").siblings("ul").css("visibility","hidden");
					ul.css("visibility","visible");
				}
				
				
			})
		})

	</script>
    <script type="text/javascript">
    	$(function(){
    		var search = $("#search");
    		var input = $("#txtSearch");
    		search.click(function(){
    			var keyWord = input.val();
    			if(keyWord.trim().length==0){
    				alert("输入不能为空")
    			}else{
        			window.location.href = "${pageContext.request.contextPath }/searchTaxGrade/"+keyWord+"/1";
    			}
    		})
    	})
    </script>

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
				                                		<a href="${pageContext.request.contextPath }/addTaxGradeView"><INPUT class=button id="add" type=button value=新增 name=add></a>
				                                	</div>
				                                	
					                                <div class="search">
					                                    <img src="${pageContext.request.contextPath }/images/icon_search.gif">
					                                    <input name="txtSearch" type="text" size="30" id="txtSearch">
					                                    <INPUT class=button id="search" type=button value=搜索 name=add>
					                                    <a id="" href="${pageContext.request.contextPath}/conditionSearchView" style="text-decoration: underline; color:black">查询条件...</a>
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
			                                <TR class="title" style="FONT-WEIGHT: bold; FONT-STYLE: normal;  TEXT-DECORATION: none;">
			                                    <TD style="width:48px;white-space:nowrap;font-size:20;color:#FF9900;"></TD>
			                                    <TD>级数</TD>
			                                    <TD>起始金额</TD>
			                                    <TD>结束金额</TD>
			                                    <TD>税率</TD>
			                                    <TD>速扣</TD>
			                                </TR>
			                                <c:forEach items="${pager.datas}" var="taxGrade" varStatus="status">
				                                 <c:choose>
				                                 	<c:when test="${(status.index+1)%2!=0 }">
				                                 <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
				                                    <TD>
				                                    	<A class="open" href="javascript:" target=_blank style="text-decoration: underline;">打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif"></A> 
				                                    	<ul style="visibility: hidden;height:49px;">
				                                    		<li><img></img><a href="${pageContext.request.contextPath}/updateTaxGradeView/${ taxGrade.taxgrade_grade}">修改</a></li>
				                                    		<li><a href="${pageContext.request.contextPath}/removeTaxGrade/${taxGrade.taxgrade_grade}">删除</a></li>
				                                    	</ul>
				                                    </TD>
				                                    <TD>${ taxGrade.taxgrade_grade}</TD>
				                                    <TD>${ taxGrade.taxgrade_start}</TD>
				                                    <TD>${ taxGrade.taxgrade_end}</TD>
				                                    <TD>${ taxGrade.taxgrade_rate}</TD>
				                                    <TD>${ taxGrade.taxgrade_speed}</TD>
				                                 </TR>
			                                 </c:when>
			                               	 <c:otherwise>
				                               	 <TR class="normal" style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
				                                    <TD>
				                                    	<A class="open" href="javascript:" target=_blank style="text-decoration: underline;">打开<img src="${pageContext.request.contextPath }/images/icon_xiaji.gif"></A> 
				                                    	<ul style="visibility: hidden;height:49px;">
				                                    		<li><img></img><a href="${pageContext.request.contextPath}/updateTaxGradeView/${ taxGrade.taxgrade_grade}">修改</a></li>
				                                    		<li><a href="${pageContext.request.contextPath}/removeTaxGrade/${taxGrade.taxgrade_grade}">删除</a></li>
				                                    	</ul>
				                                    </TD>
				                                    <TD>${ taxGrade.taxgrade_grade}</TD>
				                                    <TD>${ taxGrade.taxgrade_start}</TD>
				                                    <TD>${ taxGrade.taxgrade_end}</TD>
				                                    <TD>${ taxGrade.taxgrade_rate}</TD>
				                                    <TD>${ taxGrade.taxgrade_speed}</TD>
				                                 </TR>
			                               	 </c:otherwise>
				                                 </c:choose>
			                                 
			                                </c:forEach>
			                               
			                               
			                              </TBODY>
			                          </TABLE>
			                       </TD>
			                   </TR>
			                    <TR>
			                        <TD>
				                        <SPAN id=pagelink>
				           					 <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right;margin-top:10px">
				           					 [<B>${pager.records}</B>]条记录
				           					 <c:choose>
				           					 	<c:when test="${pager.pageindex==pager.pagecount}">
				           					 		共${pager.pagecount}页 当前是[${pager.startindex+1 }-${pager.records }]条 
				           					 	</c:when>
				           					 	<c:otherwise>
				           					 		共${pager.pagecount}页 当前是[${pager.startindex+1 }-${pager.startindex+pager.pagesize }]条  	
				           					 	</c:otherwise>
				           					 </c:choose>
				           					 <c:if test="${pager.pageindex!=1}">
				           					 	<c:choose>
				           					 		<c:when test="${type=='search'}">
				           					 			[<A href="${pageContext.request.contextPath }/conditionSearchPageNum/${pager.pageindex-1 }" target=dmMain>前一页</A>]
				           					 		</c:when>
				           					 		<c:otherwise>
				           					 			[<A href="${pageContext.request.contextPath }/PersonalIncomeTaxSetting/${pager.pageindex-1 }" target=dmMain>前一页</A>]
				           					 		</c:otherwise>
				           					 	</c:choose>
				           					 	
				           					 </c:if>
				                			<c:forEach begin="1" end="${pager.pagecount}" var="i">
				                				 <c:choose>
				                				 	<c:when test="${i==pager.pageindex}">
				                				 		 <B>${i}</B> 
				                				 	</c:when>
				                				 	<c:otherwise>
				                				 		<c:if test="${type=='search'}">
				                				 			<A class="" href="${pageContext.request.contextPath }/conditionSearchPageNum/${i }"><c:out value="${i}"></c:out></A>
				                				 		</c:if>
				                				 		<c:if test="${type=='searchAll'}">
				                				 			<A class="" href="${pageContext.request.contextPath }/PersonalIncomeTaxSetting/${i }"><c:out value="${i}"></c:out></A>
				                				 		</c:if>
				                				 	</c:otherwise>
				                				 </c:choose>
				                			</c:forEach>
				                			<c:if test="${pager.pageindex!=pager.pagecount}">
				           					 	<c:choose>
				           					 		<c:when test="${type=='search'}">
				           					 			[<A href="${pageContext.request.contextPath }/conditionSearchPageNum/${pager.pageindex+1 }" target=dmMain>前一页</A>]
				           					 		</c:when>
				           					 		<c:otherwise>
				           					 			[<A href="${pageContext.request.contextPath }/PersonalIncomeTaxSetting/${pager.pageindex+1 }" target=dmMain>前一页</A>]
				           					 		</c:otherwise>
				           					 	</c:choose>
				           					</c:if>
				                
				                <SELECT onchange="window.location=this.value">
					                <c:forEach begin="1" end="${pager.pagecount}" var="i">
					                	<c:choose>
					                		<c:when test="${i==pager.pageindex}">
					                			<c:if test="${type=='search'}">
					                				<OPTION value="${pageContext.request.contextPath }/conditionSearchPageNum/${i}" selected>第${i}页</OPTION>
					                			</c:if>
					                			<c:if test="${type=='searchAll'}">
					                				<OPTION value="${pageContext.request.contextPath }/PersonalIncomeTaxSetting/${i}" selected>第${i}页</OPTION>
					                			</c:if>
					                			
					                		</c:when>
					                		<c:otherwise>
					                			<OPTION value="${i}">第${i}页</OPTION>
					                		</c:otherwise>
					                	</c:choose>
					                </c:forEach>
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
