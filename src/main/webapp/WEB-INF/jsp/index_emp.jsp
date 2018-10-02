<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD id=Head1><TITLE>模板</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            href="${pageContext.request.contextPath }/css/index_body_Manage.css" type=text/css rel=stylesheet><LINK
            href="${pageContext.request.contextPath }/css/index_body_Style.css" type=text/css rel=stylesheet>
    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/FrameDiv.js"></SCRIPT>

    <SCRIPT language=javascript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>

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
<FORM id=form1 name=form1
      action=???
      method=post>
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
                              border=0></TD></TR></TBODY></TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
                    src="${pageContext.request.contextPath }/images/new_022.jpg" border=0> </TD>
            <TD vAlign=top width="100%" bgColor=#ffffff>
                <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
                    <TR>
                        <TD class=manageHead>当前位置：管理首页 &gt; 人事管理 &gt; 员工信息表</TD></TR>
                    <TR>
                        <TD height=2></TD></TR></TABLE>
                <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%"
                       align=center border=0>
                    <TBODY>
                    <TR>
                        <TD height=25>
                            <TABLE cellSpacing=0 cellPadding=2 border=0>
                                <TBODY>
                                <TR>
                                    <TD>筛选数据：</TD>
                                    <TD><SELECT id=sClient
                                                name=sClient> <OPTION value="" selected>全部广告商</OPTION>
                                        <OPTION value=lenovo>罗宝网</OPTION> <OPTION
                                                value=lenovoshop>联想在线</OPTION> <OPTION
                                                value=letao>乐淘网</OPTION> <OPTION
                                                value=newsmy>纽曼网上商城</OPTION> <OPTION
                                                value=ouku>欧酷行货手机网</OPTION> <OPTION
                                                value=uiyi>佑一良品网</OPTION> <OPTION value=haier>海尔之星</OPTION>
                                        <OPTION value=hpbase>惠普基地</OPTION></SELECT></TD>
                                    <TD><SELECT id=sFlag
                                                name=sFlag> <OPTION value=0 selected>全部状态</OPTION> <OPTION
                                            value=1>新申请</OPTION> <OPTION value=2>审核通过</OPTION> <OPTION
                                            value=3>审核未通过</OPTION></SELECT></TD>
                                    <TD>渠道商</TD>
                                    <TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px"
                                               maxLength=50 name=sChannel2></TD>
                                    <TD>起始日期</TD>
                                    <TD><INPUT class=textbox id=sStart2 style="WIDTH: 70px"
                                               name=sStart2></TD>
                                    <TD>截止日期</TD>
                                    <TD><INPUT class=textbox id=sEnd2 style="WIDTH: 70px"
                                               name=sEnd2></TD>
                                    <TD><INPUT class=button id=sButton2 type=submit value=" 筛选 " name=sButton2></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                        <TD>
                            <TABLE id=grid
                                   style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
                                   cellSpacing=1 cellPadding=2 rules=all border=0>
                                <TBODY>
                                <TR
                                        style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
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
            					<c:set var="pager" value="${requestScope.PAGER }"></c:set>
                                <c:forEach items="${requestScope.EMPS }" var="emp" varStatus="status"
                                	begin="${pager.startIndex }"
									end="${pager.startIndex + pager.pageSize - 1 }">
	                                <TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
	                                    <TD>${emp.empId }</TD>
	                                    <TD>${emp.empIdNumber }</TD>
	                                    <TD>${emp.empName }</TD>
	                                    <TD>${emp.empNativePlace }</TD>
	                                    <TD>${emp.empSex }</TD>
	                                    <TD>${emp.empBirthday }</TD>
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
										<TD>${emp.empGraduateTime }</TD>
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
										<TD>${emp.empHiredate }</TD>
										<TD>${emp.empTransferTime }</TD>
										<TD>${emp.empSumSeniorty }</TD>
										<TD>${emp.empUnitSeniorty }</TD>
										<TD>${emp.empBankAccount }</TD>
										<TD>${emp.empBaseSalary }</TD>
										<TD>${emp.empRegisterTime }</TD>
										<TD>${emp.empPhoto }</TD>
	                                    <%-- <TD><A href="#" target=_blank>${request.emp.empId }</A></TD>
	                                    <TD><IMG alt=申请通过 src="${pageContext.request.contextPath }/images/start.gif" border=0> </TD>
	                                    <TD><INPUT id=setlist onClick="check(this,'boxListValue');"
	                                               type=checkbox value=65 name=setlist> </TD> --%>
	                                </TR>
                                </c:forEach>
                                </TBODY>
                            </TABLE></TD></TR>
                    <TR>
                        <TD align=right height=25><INPUT id=boxListValue type=hidden
                                                         name=boxListValue> <INPUT class=button id=button1 type=submit value=批量审核通过 name=button1>
                            <INPUT class=button id=button2 type=submit value=批量拒绝申请 name=button2>
                            <INPUT onclick=selectallbox(); type=checkbox name=checkAll>
                            全选&nbsp;&nbsp;&nbsp; </TD></TR>
                    <TR>
                        <TD><SPAN id=pagelink>
            <DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
            	[<B>${pager.sumRow }</B>]条记录
                [${pager.sumPage }]页
				当前是[${pager.startIndex + 1 }-${pager.startIndex + pager.pageSize }]条
				[<A href="#">前一页</A>]
				<c:forEach begin="1" end="${pager.sumPage }" varStatus="status">
					<c:choose>
						<c:when test="${status.index == pager.currentPage }">
							<B>${status.index}</B>
						</c:when>
						<c:otherwise>
							<A class="" href="#">${status.index}</A>
						</c:otherwise>
					</c:choose>
	                
                </c:forEach>
                [<A class=""
                    href="#">后一页</A>]
                <SELECT>
                	<c:forEach begin="1" end="${pager.sumPage }" varStatus="status">
                		<OPTION value=${status.index}
						<c:if test="${status.index == pager.currentPage }">selected</c:if>>
                			第${status.index}页
                		</OPTION>
                	</c:forEach>
				</SELECT></DIV></SPAN></TD></TR></TBODY></TABLE></TD>
            <TD width=15 background=${pageContext.request.contextPath }/images/new_023.jpg><IMG
                    src="${pageContext.request.contextPath }/images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
            <TD align=middle width="100%" background=${pageContext.request.contextPath }/images/new_025.jpg
                height=15></TD>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
                              border=0></TD></TR></TBODY></TABLE>
</FORM></BODY></HTML>
