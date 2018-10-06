<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>模板</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK
	href="${pageContext.request.contextPath }/css/index_body_Manage.css"
	type=text/css rel=stylesheet>
<LINK
	href="${pageContext.request.contextPath }/css/index_body_Style.css"
	type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/index_emp.css"
	type=text/css rel=stylesheet>

<SCRIPT language=javascript>
	function selectallbox() {
		var list = document.getElementsByName('setlist');
		var listAllValue = '';
		if (document.getElementById('checkAll').checked) {
			for (var i = 0; i < list.length; i++) {
				list[i].checked = true;
				if (listAllValue == '')
					listAllValue = list[i].value;
				else
					listAllValue = listAllValue + ',' + list[i].value;
			}
			document.getElementById('boxListValue').value = listAllValue;
		} else {
			for (var i = 0; i < list.length; i++) {
				list[i].checked = false;
			}
			document.getElementById('boxListValue').value = '';
		}
	}
</SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id=form1 name=form1 action=??? method=post onkeydown="if(event.keyCode==13)return false;">
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

		<TABLE cellSpacing=0 cellPadding=0 width="4050px" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%"
						background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15
						background="${pageContext.request.contextPath }/images/new_022.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg"
						border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：管理首页 &gt; 人事管理 &gt; 员工信息表</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0
							width="100%" align=center border=0>
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
														<input type="text" size="30" id="txtSearch" value=${requestScope.KEYWORD }>
														<INPUT class=button id="search_botton" onclick="search()"
															type=button value=搜索 name=add> 
														<a id="" href="search_condition"
															style="text-decoration: underline; color: black">查询条件...</a>
													</div>
													<span id="lbl0" align="left"
														style="color: #FF9900; font-weight: bold; margin-left: 40px;">[
														员工信息表 ]</span>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<TABLE id="grid"
											style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 4000px; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
											cellSpacing=1 cellPadding=2 rules=all border=0>
											<TBODY>
												<TR
													style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none; text-align: center;">
													<TD>编号</TD>
													<TD>身份证号</TD>
													<TD>姓名</TD>
													<TD>籍贯</TD>
													<TD>性别</TD>
													<TD>生日</TD>
													<TD>曾用名</TD>
													<TD>民族</TD>
													<TD>年龄</TD>
													<TD>英文名</TD>
													<TD>政治面貌</TD>
													<TD>婚否</TD>
													<TD>第一学历</TD>
													<TD>第一专业</TD>
													<TD>第一毕业院校</TD>
													<TD>第二学历</TD>
													<TD>第二专业</TD>
													<TD>第二毕业院校</TD>
													<TD>学位</TD>
													<TD>毕业时间</TD>
													<TD>电脑水平</TD>
													<TD>外语语种1</TD>
													<TD>外语语种2</TD>
													<TD>外语语种3</TD>
													<TD>外语水平1</TD>
													<TD>外语水平2</TD>
													<TD>外语水平3</TD>
													<TD>住房情况</TD>
													<TD>常住人口</TD>
													<TD>外籍人士</TD>
													<TD>联系电话</TD>
													<TD>手机号码</TD>
													<TD>电子邮件</TD>
													<TD>家庭住址</TD>
													<TD>特长</TD>
													<TD>所属部门</TD>
													<TD>职称</TD>
													<TD>职务</TD>
													<TD>等级</TD>
													<TD>在职类别</TD>
													<TD>工种</TD>
													<TD>参加工作时间</TD>
													<TD>调入时间</TD>
													<TD>总工龄</TD>
													<TD>本单位工龄</TD>
													<TD>银行帐号</TD>
													<TD>基本工资</TD>
													<TD>录入时间</TD>
													<TD>照片</TD>
												</TR>
												<c:set var="pager" value="${requestScope.PAGING }"></c:set>
												<c:forEach items="${requestScope.EMPS }" var="emp"
													varStatus="status" begin="${pager.startIndex }"
													end="${pager.startIndex + pager.pageSize - 1 }">
													<TR
														style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
														<TD>${emp.empId }</TD>
														<TD>${emp.empIdNumber }</TD>
														<TD>${emp.empName }</TD>
														<TD>${emp.empNativePlace }</TD>
														<TD>${emp.empSex }</TD>
														<TD><fmt:formatDate value="${emp.empBirthday }"
																pattern="yyyy-MM-dd" /></TD>
														<TD>${emp.empUsedName }</TD>
														<TD>${emp.empNation }</TD>
														<TD>${emp.empAge }</TD>
														<TD>${emp.empEnglishName }</TD>
														<TD>${emp.empPoliticalStatus }</TD>
														<TD>${emp.empMarriage }</TD>
														<TD>${emp.empEducationSt }</TD>
														<TD>${emp.empMajorSt }</TD>
														<TD>${emp.empGraduatedSt }</TD>
														<TD>${emp.empEducationNd }</TD>
														<TD>${emp.empMajorNd }</TD>
														<TD>${emp.empGraduatedNd }</TD>
														<TD>${emp.empDegree }</TD>
														<TD><fmt:formatDate value="${emp.empGraduateTime }"
																pattern="yyyy-MM-dd" /></TD>
														<TD>${emp.empComputerLevel }</TD>
														<TD>${emp.empForeign1 }</TD>
														<TD>${emp.empForeign2 }</TD>
														<TD>${emp.empForeign3 }</TD>
														<TD>${emp.empForeignLevel1 }</TD>
														<TD>${emp.empForeignLevel2 }</TD>
														<TD>${emp.empForeignLevel3 }</TD>
														<TD>${emp.empApartment }</TD>
														<TD>${emp.empInhabitant }</TD>
														<TD>${emp.empForeigners }</TD>
														<TD>${emp.empTelphone }</TD>
														<TD>${emp.empMobilePhone }</TD>
														<TD>${emp.empEmail }</TD>
														<TD>${emp.empHomeAddress }</TD>
														<TD>${emp.empSpeciality }</TD>
														<TD>${emp.empDepartment }</TD>
														<TD>${emp.empAcademicTitle }</TD>
														<TD>${emp.empJob }</TD>
														<TD>${emp.empGrade }</TD>
														<TD>${emp.empJobCategory }</TD>
														<TD>${emp.empWorkCategory }</TD>
														<TD><fmt:formatDate value="${emp.empHiredate }"
																pattern="yyyy-MM-dd" /></TD>
														<TD><fmt:formatDate value="${emp.empTransferTime }"
																pattern="yyyy-MM-dd" /></TD>
														<TD>${emp.empSumSeniorty }</TD>
														<TD>${emp.empUnitSeniorty }</TD>
														<TD>${emp.empBankAccount }</TD>
														<TD>${emp.empBaseSalary }</TD>
														<TD><fmt:formatDate value="${emp.empRegisterTime }"
																pattern="yyyy-MM-dd HH:mm:ss" /></TD>
														<TD>${emp.empPhoto }</TD>
														<%-- <TD><A href="#" target=_blank>${request.emp.empId }</A></TD>
	                                    <TD><IMG alt=申请通过 src="${pageContext.request.contextPath }/images/start.gif" border=0> </TD>
	                                    <TD><INPUT id=setlist onClick="check(this,'boxListValue');"
	                                               type=checkbox value=65 name=setlist> </TD> --%>
													</TR>
												</c:forEach>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD><SPAN id=pagelink>
											<div
												style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; position: fixed; right: 40px;">
												[<B>${pager.sumRow }</B>]条记录 <B>[${pager.sumPage }</B>]页
												当前是[ ${pager.startIndex + 1 }-
												<c:choose>
													<c:when test="${pager.currentPage == pager.sumPage }">
														${pager.sumRow }
													</c:when>
													<c:otherwise>
														${pager.startIndex + pager.pageSize }
													</c:otherwise>
												</c:choose>]
												条
												
												<!-- 判断是是什么查询 -->
												<c:choose>
													<c:when test="${sessionScope.CONDI == null }">
														<c:set var="addr" value="index_emp"/>
													</c:when>
													<c:otherwise>
														<c:set var="addr" value="search_strict"/>
													</c:otherwise>
												</c:choose>
												
												<!-- 选择页码 -->
												<c:if test="${pager.currentPage != 1 }">
													[<A href="${addr }?keyword=${requestScope.KEYWORD }&currentPage=${pager.currentPage - 1}">前一页</A>]
												</c:if>
												
												<c:forEach begin="1" end="${pager.sumPage }"
													varStatus="status">
													<c:choose>
														<c:when test="${status.index == pager.currentPage }">
															<B>${status.index}</B>
														</c:when>
														<c:otherwise>
															<A class="page_num"
																href="${addr }?keyword=${requestScope.KEYWORD }&currentPage=${status.index}">${status.index}</A>
														</c:otherwise>
													</c:choose>
												</c:forEach>
												
												<c:if test="${pager.currentPage != pager.sumPage }">
													[<A class="" href="${addr }?keyword=${requestScope.KEYWORD }&currentPage=${pager.currentPage + 1}">后一页</A>]
												</c:if>
												
												<!-- 下拉选择页码 -->
												<SELECT id="pageSelect">
													<c:forEach begin="1" end="${pager.sumPage }"
														varStatus="status">
														<OPTION value="${status.index}"
															<c:if test="${status.index == pager.currentPage }">selected</c:if>>
															第${status.index}页</OPTION>
													</c:forEach>
												</SELECT>
											</div>
									</SPAN></TD>
									<TD height=35px></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
					<TD width=15
						background="${pageContext.request.contextPath }/images/new_023.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_023.jpg"
						border=0>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="4050px" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg"
						height=15></TD>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>

	<SCRIPT language=javascript
		src="${pageContext.request.contextPath }/js/jquery.min.js"></SCRIPT>
	<SCRIPT language=javascript
		src="${pageContext.request.contextPath }/js/FrameDiv.js"></SCRIPT>
	<SCRIPT language=javascript
		src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
	<SCRIPT language=javascript
		src="${pageContext.request.contextPath }/js/paging.js"></SCRIPT>
</BODY>
</HTML>
