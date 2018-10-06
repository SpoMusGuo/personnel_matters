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
		<SCRIPT language=javascript src="${pageContext.request.contextPath }/js/jquery.min.js"></SCRIPT>
		
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
		<form name="Form1" method="post" action="search_strict?SEARCH=1" onsubmit="javascript:return WebForm_OnSubmit();" id="Form1">
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
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="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" />
</div>
			<div id="mainbody">
			<table align="center" border="0" style="margin-top:20px">
				<tr>
					<td>						
						<input onclick="if (typeof(Page_ClientValidate) == 'function') Page_ClientValidate(''); __doPostBack('btnQry','')" name="btnQry" type="button" id="btnQry" class="btn" onmouseover="javascript:this.style.backgroundImage='url(../images/bj-b2.gif)';" onmouseout="javascript:this.style.backgroundImage='url(../images/bj-b.gif)';" value="开始查询" />
					</td>
					<td width="20px">
					&nbsp;
					</td>
					<td>
						<input type="button"  id="btnBack" value='取消返回' class="btn" onclick="window.history.go(-1)" onmouseover="javascript:this.style.backgroundImage='url(../images/bj-b2.gif)';" onmouseout="javascript:this.style.backgroundImage='url(../images/bj-b.gif)';" />
						
					</td>
				</tr>
			</table>
			<div id="line1"></div>
			
			<table border="0" align="center">
				<tr>
					<td valign="top">
						<table id="tCond" cellspacing="0" cellpadding="0" align="Center" rules="all" class="content2" border="1" style="border-collapse:collapse;margin-top: 20px;border:1px;border-top:1px #666 solid;border-right:1px #666 solid;border-left:1px #666 solid;">
	<tr>
		<td align="center" tId="104" colspan="4" style="background-color:#c9d7e4;height:20px;">员工信息表</td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_1" type="checkbox" value="emp_id" name="chkAlias_1" /><label for="chkAlias_1">编号</label></td><td><select name="cboop1_1" id="cboop1_1">
			<option selected="selected" value="=">=</option>
			<option value="<>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="<">&lt;</option>
			<option value="<=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_1" type="text" value="" id="txtv1_1" style="border-style:None;" /></td><td><input name="txtv2_1" type="text" id="txtv2_1" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_2" type="checkbox" value="emp_idnumber" name="chkAlias_2" /><label for="chkAlias_2">身份证号</label></td><td><select name="cboop1_2" id="cboop1_2">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_2" type="text" id="txtv1_2" style="border-style:None;" /></td><td><input name="txtv2_2" type="text" id="txtv2_2" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_3" type="checkbox" value="emp_native_place" name="chkAlias_3" /><label for="chkAlias_3">籍贯</label></td><td><select name="cboop1_3" id="cboop1_3">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_3" type="text" id="txtv1_3" style="border-style:None;" /></td><td><input name="txtv2_3" type="text" id="txtv2_3" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_4" type="checkbox" value="emp_name" name="chkAlias_4" /><label for="chkAlias_4">姓名</label></td><td><select name="cboop1_4" id="cboop1_4">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_4" type="text" id="txtv1_4" style="border-style:None;" /></td><td><input name="txtv2_4" type="text" id="txtv2_4" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_5" type="checkbox" value="emp_sex" name="chkAlias_5" /><label for="chkAlias_5">性别</label></td><td><select name="cboop1_5" id="cboop1_5">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_5" type="text" id="txtv1_5" style="border-style:None;" /></td><td><input name="txtv2_5" type="text" id="txtv2_5" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_6" type="checkbox" value="emp_birthday" name="chkAlias_6" /><label for="chkAlias_6">出生日期</label></td><td><select name="cboop1_6" id="cboop1_6">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_6" type="text" id="txtv1_6" onchange="javascript:document.getElementById(&quot;txtv1_6_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_6&quot;).value)" style="border-style:None;" /><span id="cpv1_6" style="color:Red;display:none;">*</span><input name="txtv1_6_a" type="text" value="1" id="txtv1_6_a" style="display:none;" /></td><td><input name="txtv2_6" type="text" id="txtv2_6" onchange="javascript:document.getElementById(&quot;txtv2_6_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_6&quot;).value)" style="border-style:None;" /><span id="cpv2_6" style="color:Red;display:none;">*</span><input name="txtv2_6_a" type="text" value="1" id="txtv2_6_a" style="display:none;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_7" type="checkbox" value="    " name="chkAlias_7" /><label for="chkAlias_7">曾用名</label></td><td><select name="cboop1_7" id="cboop1_7">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_7" type="text" id="txtv1_7" style="border-style:None;" /></td><td><input name="txtv2_7" type="text" id="txtv2_7" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_8" type="checkbox" value="    " name="chkAlias_8" /><label for="chkAlias_8">民族</label></td><td><select name="cboop1_8" id="cboop1_8">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_8" type="text" id="txtv1_8" style="border-style:None;" /></td><td><input name="txtv2_8" type="text" id="txtv2_8" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_9" type="checkbox" value="    " name="chkAlias_9" /><label for="chkAlias_9">年龄</label></td><td><select name="cboop1_9" id="cboop1_9">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_9" type="text" id="txtv1_9" style="border-style:None;" /><span id="cpv1_9" style="color:Red;display:none;">*</span></td><td><input name="txtv2_9" type="text" id="txtv2_9" style="border-style:None;" /><span id="cpv2_9" style="color:Red;display:none;">*</span></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_10" type="checkbox" value="    " name="chkAlias_10" /><label for="chkAlias_10">英文名</label></td><td><select name="cboop1_10" id="cboop1_10">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_10" type="text" id="txtv1_10" style="border-style:None;" /></td><td><input name="txtv2_10" type="text" id="txtv2_10" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_11" type="checkbox" value="    " name="chkAlias_11" /><label for="chkAlias_11">政治面貌</label></td><td><select name="cboop1_11" id="cboop1_11">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_11" type="text" id="txtv1_11" style="border-style:None;" /></td><td><input name="txtv2_11" type="text" id="txtv2_11" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_12" type="checkbox" value="    " name="chkAlias_12" /><label for="chkAlias_12">婚否</label></td><td><select name="cboop1_12" id="cboop1_12">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_12" type="text" id="txtv1_12" style="border-style:None;" /></td><td><input name="txtv2_12" type="text" id="txtv2_12" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_13" type="checkbox" value="    " name="chkAlias_13" /><label for="chkAlias_13">第一学历</label></td><td><select name="cboop1_13" id="cboop1_13">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_13" type="text" id="txtv1_13" style="border-style:None;" /></td><td><input name="txtv2_13" type="text" id="txtv2_13" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_14" type="checkbox" value="    " name="chkAlias_14" /><label for="chkAlias_14">第一专业</label></td><td><select name="cboop1_14" id="cboop1_14">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_14" type="text" id="txtv1_14" style="border-style:None;" /></td><td><input name="txtv2_14" type="text" id="txtv2_14" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_15" type="checkbox" value="    " name="chkAlias_15" /><label for="chkAlias_15">第一毕业院校</label></td><td><select name="cboop1_15" id="cboop1_15">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_15" type="text" id="txtv1_15" style="border-style:None;" /></td><td><input name="txtv2_15" type="text" id="txtv2_15" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_16" type="checkbox" value="    " name="chkAlias_16" /><label for="chkAlias_16">第二学历</label></td><td><select name="cboop1_16" id="cboop1_16">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_16" type="text" id="txtv1_16" style="border-style:None;" /></td><td><input name="txtv2_16" type="text" id="txtv2_16" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_17" type="checkbox" value="    " name="chkAlias_17" /><label for="chkAlias_17">第二专业</label></td><td><select name="cboop1_17" id="cboop1_17">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_17" type="text" id="txtv1_17" style="border-style:None;" /></td><td><input name="txtv2_17" type="text" id="txtv2_17" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_18" type="checkbox" value="    " name="chkAlias_18" /><label for="chkAlias_18">第二毕业院校</label></td><td><select name="cboop1_18" id="cboop1_18">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_18" type="text" id="txtv1_18" style="border-style:None;" /></td><td><input name="txtv2_18" type="text" id="txtv2_18" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_19" type="checkbox" value="    " name="chkAlias_19" /><label for="chkAlias_19">学位</label></td><td><select name="cboop1_19" id="cboop1_19">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_19" type="text" id="txtv1_19" style="border-style:None;" /></td><td><input name="txtv2_19" type="text" id="txtv2_19" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_20" type="checkbox" value="    " name="chkAlias_20" /><label for="chkAlias_20">毕业时间</label></td><td><select name="cboop1_20" id="cboop1_20">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_20" type="text" id="txtv1_20" onchange="javascript:document.getElementById(&quot;txtv1_20_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_20&quot;).value)" style="border-style:None;" /><span id="cpv1_20" style="color:Red;display:none;">*</span><input name="txtv1_20_a" type="text" value="1" id="txtv1_20_a" style="display:none;" /></td><td><input name="txtv2_20" type="text" id="txtv2_20" onchange="javascript:document.getElementById(&quot;txtv2_20_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_20&quot;).value)" style="border-style:None;" /><span id="cpv2_20" style="color:Red;display:none;">*</span><input name="txtv2_20_a" type="text" value="1" id="txtv2_20_a" style="display:none;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_21" type="checkbox" value="    " name="chkAlias_21" /><label for="chkAlias_21">电脑水平</label></td><td><select name="cboop1_21" id="cboop1_21">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_21" type="text" id="txtv1_21" style="border-style:None;" /></td><td><input name="txtv2_21" type="text" id="txtv2_21" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_22" type="checkbox" value="    " name="chkAlias_22" /><label for="chkAlias_22">外语语种1</label></td><td><select name="cboop1_22" id="cboop1_22">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_22" type="text" id="txtv1_22" style="border-style:None;" /></td><td><input name="txtv2_22" type="text" id="txtv2_22" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_23" type="checkbox" value="    " name="chkAlias_23" /><label for="chkAlias_23">外语语种2</label></td><td><select name="cboop1_23" id="cboop1_23">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_23" type="text" id="txtv1_23" style="border-style:None;" /></td><td><input name="txtv2_23" type="text" id="txtv2_23" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_24" type="checkbox" value="    " name="chkAlias_24" /><label for="chkAlias_24">外语语种3</label></td><td><select name="cboop1_24" id="cboop1_24">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_24" type="text" id="txtv1_24" style="border-style:None;" /></td><td><input name="txtv2_24" type="text" id="txtv2_24" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_25" type="checkbox" value="    " name="chkAlias_25" /><label for="chkAlias_25">外语水平1</label></td><td><select name="cboop1_25" id="cboop1_25">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_25" type="text" id="txtv1_25" style="border-style:None;" /></td><td><input name="txtv2_25" type="text" id="txtv2_25" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_26" type="checkbox" value="    " name="chkAlias_26" /><label for="chkAlias_26">外语水平2</label></td><td><select name="cboop1_26" id="cboop1_26">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_26" type="text" id="txtv1_26" style="border-style:None;" /></td><td><input name="txtv2_26" type="text" id="txtv2_26" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_27" type="checkbox" value="    " name="chkAlias_27" /><label for="chkAlias_27">外语水平3</label></td><td><select name="cboop1_27" id="cboop1_27">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_27" type="text" id="txtv1_27" style="border-style:None;" /></td><td><input name="txtv2_27" type="text" id="txtv2_27" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_28" type="checkbox" value="    " name="chkAlias_28" /><label for="chkAlias_28">住房情况</label></td><td><select name="cboop1_28" id="cboop1_28">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_28" type="text" id="txtv1_28" style="border-style:None;" /></td><td><input name="txtv2_28" type="text" id="txtv2_28" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_29" type="checkbox" value="    " name="chkAlias_29" /><label for="chkAlias_29">常住人口</label></td><td><select name="cboop1_29" id="cboop1_29">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_29" type="text" id="txtv1_29" style="border-style:None;" /></td><td><input name="txtv2_29" type="text" id="txtv2_29" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_30" type="checkbox" value="    " name="chkAlias_30" /><label for="chkAlias_30">外籍人士</label></td><td><select name="cboop1_30" id="cboop1_30">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_30" type="text" id="txtv1_30" style="border-style:None;" /></td><td><input name="txtv2_30" type="text" id="txtv2_30" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_31" type="checkbox" value="    " name="chkAlias_31" /><label for="chkAlias_31">联系电话</label></td><td><select name="cboop1_31" id="cboop1_31">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_31" type="text" id="txtv1_31" style="border-style:None;" /></td><td><input name="txtv2_31" type="text" id="txtv2_31" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_32" type="checkbox" value="    " name="chkAlias_32" /><label for="chkAlias_32">手机号码</label></td><td><select name="cboop1_32" id="cboop1_32">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_32" type="text" id="txtv1_32" style="border-style:None;" /></td><td><input name="txtv2_32" type="text" id="txtv2_32" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_33" type="checkbox" value="    " name="chkAlias_33" /><label for="chkAlias_33">电子邮件</label></td><td><select name="cboop1_33" id="cboop1_33">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_33" type="text" id="txtv1_33" style="border-style:None;" /></td><td><input name="txtv2_33" type="text" id="txtv2_33" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_34" type="checkbox" value="    " name="chkAlias_34" /><label for="chkAlias_34">家庭地址</label></td><td><select name="cboop1_34" id="cboop1_34">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_34" type="text" id="txtv1_34" style="border-style:None;" /></td><td><input name="txtv2_34" type="text" id="txtv2_34" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_35" type="checkbox" value="    " name="chkAlias_35" /><label for="chkAlias_35">特长</label></td><td><select name="cboop1_35" id="cboop1_35">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_35" type="text" id="txtv1_35" style="border-style:None;" /></td><td><input name="txtv2_35" type="text" id="txtv2_35" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_36" type="checkbox" value="    " name="chkAlias_36" /><label for="chkAlias_36">所属部门</label></td><td><select name="cboop1_36" id="cboop1_36">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_36" type="text" id="txtv1_36" style="border-style:None;" /></td><td><input name="txtv2_36" type="text" id="txtv2_36" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_37" type="checkbox" value="    " name="chkAlias_37" /><label for="chkAlias_37">职称</label></td><td><select name="cboop1_37" id="cboop1_37">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_37" type="text" id="txtv1_37" style="border-style:None;" /></td><td><input name="txtv2_37" type="text" id="txtv2_37" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_38" type="checkbox" value="    " name="chkAlias_38" /><label for="chkAlias_38">职务</label></td><td><select name="cboop1_38" id="cboop1_38">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_38" type="text" id="txtv1_38" style="border-style:None;" /></td><td><input name="txtv2_38" type="text" id="txtv2_38" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_39" type="checkbox" value="    " name="chkAlias_39" /><label for="chkAlias_39">等级</label></td><td><select name="cboop1_39" id="cboop1_39">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_39" type="text" id="txtv1_39" style="border-style:None;" /></td><td><input name="txtv2_39" type="text" id="txtv2_39" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_40" type="checkbox" value="    " name="chkAlias_40" /><label for="chkAlias_40">在职类别</label></td><td><select name="cboop1_40" id="cboop1_40">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_40" type="text" id="txtv1_40" style="border-style:None;" /></td><td><input name="txtv2_40" type="text" id="txtv2_40" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_41" type="checkbox" value="    " name="chkAlias_41" /><label for="chkAlias_41">工种</label></td><td><select name="cboop1_41" id="cboop1_41">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_41" type="text" id="txtv1_41" style="border-style:None;" /></td><td><input name="txtv2_41" type="text" id="txtv2_41" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_42" type="checkbox" value="    " name="chkAlias_42" /><label for="chkAlias_42">参加工作时间</label></td><td><select name="cboop1_42" id="cboop1_42">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_42" type="text" id="txtv1_42" onchange="javascript:document.getElementById(&quot;txtv1_42_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_42&quot;).value)" style="border-style:None;" /><span id="cpv1_42" style="color:Red;display:none;">*</span><input name="txtv1_42_a" type="text" value="1" id="txtv1_42_a" style="display:none;" /></td><td><input name="txtv2_42" type="text" id="txtv2_42" onchange="javascript:document.getElementById(&quot;txtv2_42_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_42&quot;).value)" style="border-style:None;" /><span id="cpv2_42" style="color:Red;display:none;">*</span><input name="txtv2_42_a" type="text" value="1" id="txtv2_42_a" style="display:none;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_43" type="checkbox" value="    " name="chkAlias_43" /><label for="chkAlias_43">调入时间</label></td><td><select name="cboop1_43" id="cboop1_43">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_43" type="text" id="txtv1_43" onchange="javascript:document.getElementById(&quot;txtv1_43_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_43&quot;).value)" style="border-style:None;" /><span id="cpv1_43" style="color:Red;display:none;">*</span><input name="txtv1_43_a" type="text" value="1" id="txtv1_43_a" style="display:none;" /></td><td><input name="txtv2_43" type="text" id="txtv2_43" onchange="javascript:document.getElementById(&quot;txtv2_43_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_43&quot;).value)" style="border-style:None;" /><span id="cpv2_43" style="color:Red;display:none;">*</span><input name="txtv2_43_a" type="text" value="1" id="txtv2_43_a" style="display:none;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_44" type="checkbox" value="    " name="chkAlias_44" /><label for="chkAlias_44">总工龄</label></td><td><select name="cboop1_44" id="cboop1_44">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_44" type="text" id="txtv1_44" style="border-style:None;" /><span id="cpv1_44" style="color:Red;display:none;">*</span></td><td><input name="txtv2_44" type="text" id="txtv2_44" style="border-style:None;" /><span id="cpv2_44" style="color:Red;display:none;">*</span></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_45" type="checkbox" value="    " name="chkAlias_45" /><label for="chkAlias_45">本单位工龄</label></td><td><select name="cboop1_45" id="cboop1_45">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_45" type="text" id="txtv1_45" style="border-style:None;" /><span id="cpv1_45" style="color:Red;display:none;">*</span></td><td><input name="txtv2_45" type="text" id="txtv2_45" style="border-style:None;" /><span id="cpv2_45" style="color:Red;display:none;">*</span></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_46" type="checkbox" value="    " name="chkAlias_46" /><label for="chkAlias_46">银行帐号</label></td><td><select name="cboop1_46" id="cboop1_46">
			<option value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option selected="selected" value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_46" type="text" id="txtv1_46" style="border-style:None;" /></td><td><input name="txtv2_46" type="text" id="txtv2_46" style="border-style:None;" /></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_47" type="checkbox" value="    " name="chkAlias_47" /><label for="chkAlias_47">基本工资</label></td><td><select name="cboop1_47" id="cboop1_47">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_47" type="text" id="txtv1_47" style="border-style:None;" /><span id="cpv1_47" style="color:Red;display:none;">*</span></td><td><input name="txtv2_47" type="text" id="txtv2_47" style="border-style:None;" /><span id="cpv2_47" style="color:Red;display:none;">*</span></td>
	</tr><tr>
		<td style="white-space:nowrap;"><input id="chkAlias_48" type="checkbox" value="    " name="chkAlias_48" /><label for="chkAlias_48">录入时间</label></td><td><select name="cboop1_48" id="cboop1_48">
			<option selected="selected" value="=">=</option>
			<option value="&lt;>">&lt;&gt;</option>
			<option value=">">&gt;</option>
			<option value=">=">&gt;=</option>
			<option value="&lt;">&lt;</option>
			<option value="&lt;=">&lt;=</option>
			<option value="between">介于</option>
			<option value="like">形如</option>
			<option value="is not null">有值</option>
			<option value="is null">无值</option>

		</select></td><td><input name="txtv1_48" type="text" id="txtv1_48" onchange="javascript:document.getElementById(&quot;txtv1_48_a&quot;).value=chkDateType(document.getElementById(&quot;txtv1_48&quot;).value)" style="border-style:None;" /><span id="cpv1_48" style="color:Red;display:none;">*</span><input name="txtv1_48_a" type="text" value="1" id="txtv1_48_a" style="display:none;" /></td><td><input name="txtv2_48" type="text" id="txtv2_48" onchange="javascript:document.getElementById(&quot;txtv2_48_a&quot;).value=chkDateType(document.getElementById(&quot;txtv2_48&quot;).value)" style="border-style:None;" /><span id="cpv2_48" style="color:Red;display:none;">*</span><input name="txtv2_48_a" type="text" value="1" id="txtv2_48_a" style="display:none;" /></td>
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
//<![CDATA[

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
        //]]>
</script>
</form>
<c:forEach items="${sessionScope.CONDI }" var="condition">
	<script type="text/javascript">
		$(document).ready(function(){
			$("")
		}
	</script>
</c:forEach>
	</body>
</html>
