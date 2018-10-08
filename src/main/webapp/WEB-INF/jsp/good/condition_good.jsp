<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 	<head>
		<title>cond</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" type="text/css" href="../styles/style.css"  />
		<link rel="stylesheet" type="text/css" href="../styles/calendar-system.css" />
		<script type="text/javascript"  language="javascript" src="../Inc/prototype.js"></script>	
        <script type="text/javascript" language="javascript" src="../Inc/jquery-release.js"></script>      
        <script type="text/javascript" language="javascript" src="../Inc/jquery-ces-plugin.js "></script>
		<script type="text/javascript"  language="javascript" src="../Inc/calendar.js"></script>
		
		<script type="text/javascript"  language="javascript" src="../Inc/calendar-zh.js"></script>
		<script type="text/javascript"  language="javascript" src="../Inc/calendar-setup.js"></script>

		<script type="text/vbscript" language="vbscript" >
		    'delete on 2013.11.30, 没用了
'			function popUpDate(value)
'				a=showModalDialog("popupDate.aspx?value=" & encodeURI(value) ,0,"dialogWidth:320px;dialogHeight:150px;")
'				if a<>"" then
'					popUpDate= a
'				else 
'					popUpDate= value
'				end if			
'			end function
			function chkDateType(v)
				chkDateType=0
				if trim(v)="" then
					chkDateType=1
				elseif isdate(v) then
					chkDateType=1
				end if
			end function
		</script>
		<script type="text/javascript" language="javascript">

        function getBrowserLang() {
	        var s ='';
	        s = s.replace(/(^\s*)|(\s*$)/g, "");
	        if (/^[^,]+,.*/.test(s)) {
		        return s.split(",")[0];
	        } else {
		        return s;
	        }
        }
        function getDateFormatByBrowserLang() {
	        var lang = getBrowserLang();
	        if (/^en.*/.test(lang)) {
		        if (lang == "en-us") {
			        return "%m/%d/%Y";
		        } else if (lang == "en-gb") {
			        return "%d/%m/%Y";
		        } else if (lang == "en-au") {
			        return "%d/%m/%Y";
		        } else {
			        return "%m/%d/%Y";
		        }
	        } else if (/^zh.*/.test(lang)) {
		        return "%Y-%m-%d";
	        } else {
		        return "%Y-%m-%d";
	        }
        }
        var dateMask = getDateFormatByBrowserLang();
        var calendars = [];
        function calendarInit(fieldID, buttonID) {
	        if (!calendars[fieldID]) {
		        var calendar = Calendar.setup( {
			        inputField : fieldID,
			        //ifFormat : "%Y-%m-%d %H:%M",
			        ifFormat : dateMask, // the date format
			        button : buttonID,
			        showsTime : true,
			        timeFormat : 24,
			        cache : true,
			        electric : false,
			        onSelect : function(calendar, date) {
				        date = date.replace(/^\s+|\s+$/g, "");
				        calendar.params.inputField.value = date;
				        if (calendar.dateClicked) {
					        calendar.callCloseHandler();
				        }
			        }
		        });
		        calendars[fieldID] = calendar;
	        }
        }

        //--------add by zhangjunru 10.12.22 begin--------
        //点击返回按钮，返回上个页面
        function backclick() {
            //var url='../Appfunc/dataQuery.aspx'; 
            var url='../Appfunc/dataQuery.aspx';  //'update on 2013.08.28
            window.location.href=url+ "?ifHasCond=0";            
        }
        //---------add by zhangjunru 10.12.22 end---------
		</script>
</head>
	<body>
		<form name="Form1" method="post" action="${pageContext.request.contextPath }/good/queryGoodStrict" onsubmit="javascript:return WebForm_OnSubmit();" id="Form1">
		<div>
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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ZGRkAm8PZBYCAgEPZBYCZg8QDxYCHwRnZGRkZAJwD2QWAgIBD2QWAmYPEA8WAh8EZ2RkZGQCcg9kFgICAQ9kFgJmDxAPFgIfBGdkZGRkAnMPZBYCAgEPZBYCZg8QDxYCHwRnZGRkZAJ0D2QWAgIBD2QWAmYPEA8WAh8EZ2RkZGQCdQ9kFgICAQ9kFgJmDxAPFgIfBGdkZGRkAnYPZBYCAgEPZBYCZg8QDxYCHwRnZGRkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WaAUKY2hrQWxpYXNfMQUKY2hrQWxpYXNfMgUKY2hrQWxpYXNfMwUKY2hrQWxpYXNfNAUKY2hrQWxpYXNfNQUKY2hrQWxpYXNfNgUKY2hrQWxpYXNfNwUKY2hrQWxpYXNfOAUKY2hrQWxpYXNfOQULY2hrQWxpYXNfMTAFC2Noa0FsaWFzXzExBQtjaGtBbGlhc18xMgULY2hrQWxpYXNfMTMFC2Noa0FsaWFzXzE0BQtjaGtBbGlhc18xNQULY2hrQWxpYXNfMTYFC2Noa0FsaWFzXzE3BQtjaGtBbGlhc18xOAULY2hrQWxpYXNfMTkFC2Noa0FsaWFzXzIwBQtjaGtBbGlhc18yMQULY2hrQWxpYXNfMjIFC2Noa0FsaWFzXzIzBQtjaGtBbGlhc18yNAULY2hrQWxpYXNfMjUFC2Noa0FsaWFzXzI2BQtjaGtBbGlhc18yNwULY2hrQWxpYXNfMjgFC2Noa0FsaWFzXzI5BQtjaGtBbGlhc18zMAULY2hrQWxpYXNfMzEFC2Noa0FsaWFzXzMyBQtjaGtBbGlhc18zMwULY2hrQWxpYXNfMzQFC2Noa0FsaWFzXzM1BQtjaGtBbGlhc18zNgULY2hrQWxpYXNfMzcFC2Noa0FsaWFzXzM4BQtjaGtBbGlhc18zOQULY2hrQWxpYXNfNDAFC2Noa0FsaWFzXzQxBQtjaGtBbGlhc180MgULY2hrQWxpYXNfNDMFC2Noa0FsaWFzXzQ0BQtjaGtBbGlhc180NQULY2hrQWxpYXNfNDYFC2Noa0FsaWFzXzQ3BQtjaGtBbGlhc180OAULY2hrQWxpYXNfNDkFC2Noa0FsaWFzXzUxBQtjaGtBbGlhc181MwULY2hrQWxpYXNfNTUFC2Noa0FsaWFzXzU2BQtjaGtBbGlhc181NwULY2hrQWxpYXNfNTgFC2Noa0FsaWFzXzU5BQtjaGtBbGlhc182MAULY2hrQWxpYXNfNjEFC2Noa0FsaWFzXzYyBQtjaGtBbGlhc182NAULY2hrQWxpYXNfNjYFC2Noa0FsaWFzXzY3BQtjaGtBbGlhc182OAULY2hrQWxpYXNfNjkFC2Noa0FsaWFzXzcwBQtjaGtBbGlhc183MQULY2hrQWxpYXNfNzIFC2Noa0FsaWFzXzc0BQtjaGtBbGlhc183NgULY2hrQWxpYXNfNzcFC2Noa0FsaWFzXzc4BQtjaGtBbGlhc183OQULY2hrQWxpYXNfODEFC2Noa0FsaWFzXzgzBQtjaGtBbGlhc184NAULY2hrQWxpYXNfODUFC2Noa0FsaWFzXzg2BQtjaGtBbGlhc184NwULY2hrQWxpYXNfODgFC2Noa0FsaWFzXzg5BQtjaGtBbGlhc185MQULY2hrQWxpYXNfOTMFC2Noa0FsaWFzXzk0BQtjaGtBbGlhc185NQULY2hrQWxpYXNfOTYFC2Noa0FsaWFzXzk3BQtjaGtBbGlhc185OAULY2hrQWxpYXNfOTkFDGNoa0FsaWFzXzEwMQUMY2hrQWxpYXNfMTAzBQxjaGtBbGlhc18xMDQFDGNoa0FsaWFzXzEwNQUMY2hrQWxpYXNfMTA2BQxjaGtBbGlhc18xMDcFDGNoa0FsaWFzXzEwOAUMY2hrQWxpYXNfMTA5BQxjaGtBbGlhc18xMTAFDGNoa0FsaWFzXzExMQUMY2hrQWxpYXNfMTEyBQxjaGtBbGlhc18xMTQFDGNoa0FsaWFzXzExNQUMY2hrQWxpYXNfMTE2BQxjaGtBbGlhc18xMTcFDGNoa0FsaWFzXzExOCDDSzppFbqzwZDJq6pDGBSrZdkh" />
		</div>
		<script type="text/javascript">
		//<![CDATA[
		var theForm = document.forms['Form1'];
		if (!theForm) {
		    theForm = document.Form1;
		}
		function __doPostBack(eventTarget, eventArgument) {
		    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
		        theForm.__EVENTTARGET.value = eventTarget;
		        theForm.__EVENTARGUMENT.value = eventArgument;
		        theForm.submit();
		    }
		}
		//]]>
		</script>
		<script src="/esweb/WebResource.axd?d=CsshuQOrF1UMaNI6nS1DEC5WBbgBgtrnqIIlWt-ihhE1&amp;t=636320251895468750" type="text/javascript"></script>
		<script type="text/javascript">
			function WebForm_OnSubmit() {
			if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
			return true;
			}
		</script>
		<div>
			<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="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" />
		</div>
		<div id="mainbody">
			<table align="center" border="0" style="margin-top:20px">
				<tr>
					<td>						
						<input onclick="if (typeof(Page_ClientValidate) == 'function') Page_ClientValidate(''); __doPostBack('btnQry','')" name="btnQry" type="button" id="btnQry" class="btn" onmouseover="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/bj-b2.gif)';" onmouseout="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/button.gif)';" style="background:url('${pageContext.request.contextPath }/images/button.gif')" value="开始查询" />
					</td>
					<td width="20px">
					&nbsp;
					</td>
					<td>
						<input type="button"  id="btnBack" value='取消返回' class="btn" onclick="window.history.go(-1)" onmouseover="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/bj-b2.gif)';" onmouseout="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/button.gif)';"style="background:url('${pageContext.request.contextPath }/images/button.gif')" />						
					</td>
				</tr>
			</table>
			<div id="line1"></div>			
			<table border="0" align="center">
				<tr>
					<td valign="top">
						<table id="tCond" cellspacing="0" cellpadding="0" align="Center" rules="all" class="content2" border="1" style="border-collapse:collapse;margin-top: 20px;border:1px;border-top:1px #666 solid;border-right:1px #666 solid;border-left:1px #666 solid;">
							<tr>
								<td align="center" tId="104" colspan="4" style="background-color:#c9d7e4;height:20px;">物品信息表</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_1" type="checkbox" value="good_id" name="chkAlias_1" />
									<label for="chkAlias_1">物品编号</label>
								</td>
								<td>
									<select name="cboop1_1" id="cboop1_1">
										<option selected="selected" value="=">=</option>
										<option value="like">形如</option>						
									</select>
								</td>
								<td>
									<input name="txtv1_1" type="text" value="" id="txtv1_1" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_1" type="text" id="txtv2_1" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_2" type="checkbox" value="good_name" name="chkAlias_2" />
									<label for="chkAlias_2">物品名称</label>
								</td>
								<td>
									<select name="cboop1_2" id="cboop1_2">
										<option value="=">=</option>
										<option selected="selected" value="like">形如</option>
									</select>
								</td>
								<td>
									<input name="txtv1_2" type="text" id="txtv1_2" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_2" type="text" id="txtv2_2" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_3" type="checkbox" value="good_type" name="chkAlias_3" />
									<label for="chkAlias_3">物品类型</label>
								</td>
								<td>
									<select name="cboop1_3" id="cboop1_3">
										<option value="=">=</option>						
									</select>
								</td>
								<td>
									<select name="txtv1_3" id="txtv1_3" style="width:90%;height:100%;border-style:None" >
										  <option value ="电脑类">电脑类</option>
										  <option value ="文具类">文具类</option>
										  <option value="服装类">服装类</option>
										  <option value="饮料类">饮料类</option>
										  <option value="食品类">食品类</option>
										  <option value="汽车类">汽车类</option>
									</select>
								</td>
								<td>
									<input name="txtv2_3" type="text" id="txtv2_3" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_4" type="checkbox" value="good_price" name="chkAlias_4" />
									<label for="chkAlias_4">单价</label>
								</td>
								<td>
									<select name="cboop1_4" id="cboop1_4">
										<option value="=">=</option>
										<option value="&lt;>">&lt;&gt;</option>
										<option value=">">&gt;</option>
										<option value=">=">&gt;=</option>
										<option value="&lt;">&lt;</option>
										<option value="&lt;=">&lt;=</option>
										<option value="between">介于</option>
										<option selected="selected" value="like">形如</option>						
									</select>
								</td>
								<td>
									<input name="txtv1_4" type="text" id="txtv1_4" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_4" type="text" id="txtv2_4" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_5" type="checkbox" value="good_count" name="chkAlias_5" />
									<label for="chkAlias_5">数量</label>
								</td>
								<td>
									<select name="cboop1_5" id="cboop1_5">
										<option value="=">=</option>
										<option value="&lt;>">&lt;&gt;</option>
										<option value=">">&gt;</option>
										<option value=">=">&gt;=</option>
										<option value="&lt;">&lt;</option>
										<option value="&lt;=">&lt;=</option>
										<option value="between">介于</option>
										<option selected="selected" value="like">形如</option>						
									</select>
								</td>
								<td>
									<input name="txtv1_5" type="text" id="txtv1_5" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_5" type="text" id="txtv2_5" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_6" type="checkbox" value="good_register_date" name="chkAlias_6" />
									<label for="chkAlias_6">登记时间</label>
								</td>
								<td>
									<select name="cboop1_6" id="cboop1_6">
										<option selected="selected" value="=">=</option>
										<option value="&lt;>">&lt;&gt;</option>
										<option value=">">&gt;</option>
										<option value=">=">&gt;=</option>
										<option value="&lt;">&lt;</option>
										<option value="&lt;=">&lt;=</option>
										<option value="between">介于</option>
										<option value="like">形如</option>						
									</select>
								</td>
								<td>
									<input name="txtv1_6" type="text" id="txtv1_6" onchange="javascript:document.getElementById(&quot;txtv1_6_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_6&quot;).value)" style="border-style:None;" />
									<span id="cpv1_6" style="color:Red;display:none;">*</span>
									<input name="txtv1_6_a" type="text" value="1" id="txtv1_6_a" style="display:none;" />
								</td>
								<td>
									<input name="txtv2_6" type="text" id="txtv2_6" onchange="javascript:document.getElementById(&quot;txtv2_6_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_6&quot;).value)" style="border-style:None;" />
									<span id="cpv2_6" style="color:Red;display:none;">*</span>
									<input name="txtv2_6_a" type="text" value="1" id="txtv2_6_a" style="display:none;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_7" type="checkbox" value="good_repetory" name="chkAlias_7" />
									<label for="chkAlias_7">计算库存</label>
								</td>
								<td>
									<select name="cboop1_7" id="cboop1_7">
										<option value="=">=</option>
										<option value="&lt;>">&lt;&gt;</option>
										<option value=">">&gt;</option>
										<option value=">=">&gt;=</option>
										<option value="&lt;">&lt;</option>
										<option value="&lt;=">&lt;=</option>
										<option value="between">介于</option>
										<option selected="selected" value="like">形如</option>							
									</select>
								</td>
								<td>
									<input name="txtv1_7" type="text" id="txtv1_7" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_7" type="text" id="txtv2_7" style="border-style:None;" />
								</td>
							</tr>
							<tr>
								<td style="white-space:nowrap;">
									<input id="chkAlias_8" type="checkbox" value="good_notes" name="chkAlias_8" />
									<label for="chkAlias_8">备注</label>
								</td>
								<td>
									<select name="cboop1_8" id="cboop1_8">
										<option value="=">=</option>
										<option selected="selected" value="like">形如</option>
										<option value="is not null">有值</option>
										<option value="is null">无值</option>				
									</select>
								</td>
								<td>
									<input name="txtv1_8" type="text" id="txtv1_8" style="border-style:None;" />
								</td>
								<td>
									<input name="txtv2_8" type="text" id="txtv2_8" style="border-style:None;" />
								</td>
							</tr>
						</table>
					</td>
					<td valign="top">
						<div id="ValidationSummary1" style="color:Red;width:314px;display:none;">
						</div>
					</td>
				</tr>
			</table>
		</div>		
		<script type="text/javascript">			
			var Page_ValidationSummaries =  new Array(document.getElementById("ValidationSummary1"));
			var Page_Validators =  new Array(document.getElementById("cpv1_6"), document.getElementById("cpv2_6"), document.getElementById("cpv1_9"), document.getElementById("cpv2_9"), document.getElementById("cpv1_20"), document.getElementById("cpv2_20"), document.getElementById("cpv1_42"), document.getElementById("cpv2_42"), document.getElementById("cpv1_43"), document.getElementById("cpv2_43"), document.getElementById("cpv1_44"), document.getElementById("cpv2_44"), document.getElementById("cpv1_45"), document.getElementById("cpv2_45"), document.getElementById("cpv1_47"), document.getElementById("cpv2_47"), document.getElementById("cpv1_48"), document.getElementById("cpv2_48"));
		</script>
		<script type="text/javascript">
			var cpv1_6 = document.all ? document.all["cpv1_6"] : document.getElementById("cpv1_6");
			cpv1_6.controltovalidate = "txtv1_6_a";
			cpv1_6.errormessage = "[物品信息表] - [登记时间] 条件第一个文本框的值请输入类似 [2018-10-4] 类型的日期。";
			cpv1_6.display = "Dynamic";
			cpv1_6.type = "Double";
			cpv1_6.decimalchar = ".";
			cpv1_6.evaluationfunction = "CompareValidatorEvaluateIsValid";
			cpv1_6.valuetocompare = "1";
			var cpv2_6 = document.all ? document.all["cpv2_6"] : document.getElementById("cpv2_6");
			cpv2_6.controltovalidate = "txtv2_6_a";
			cpv2_6.errormessage = "[物品信息表] - [登记时间] 条件第二个文本框的值请输入类似 [2018-10-4] 类型的日期。";
			cpv2_6.display = "Dynamic";
			cpv2_6.type = "Double";
			cpv2_6.decimalchar = ".";
			cpv2_6.evaluationfunction = "CompareValidatorEvaluateIsValid";
			cpv2_6.valuetocompare = "1";
		</script>	
		<script type="text/javascript">			
			var Page_ValidationActive = false;
			if (typeof(ValidatorOnLoad) == "function") {
			    ValidatorOnLoad();
			}
			function ValidatorOnSubmit() {
			    if (Page_ValidationActive) {
			        return ValidatorCommonOnSubmit();
			    }
			    else {
			        return true;
			    }
			}
		</script>
		</form>
	</body>
</html>
