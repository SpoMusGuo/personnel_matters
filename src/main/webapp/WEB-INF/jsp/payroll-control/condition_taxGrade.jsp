<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>cond</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style>
        * {
            font-size: 9pt;
        }

        body {
            margin: 0px;
            padding: 0px;
            FONT-SIZE: 10pt;
            font-family: 宋体;

        }

        #loginicon img {
            margin-left: 50px;
        }

        #top img {
            vertical-align: -20%;
            margin-left: 20px;
            margin-right: 0px;
        }

        #top a:link {
            color: #fff;
            text-decoration: none;
        }

        #top a:visited {
            color: #fff;
            text-decoration: none;
        }

        #top a:hover {
            color: #FF9900;
            text-decoration: none;
        }

        #top a:active {
            color: #FF9900;
            text-decoration: none;
        }

        #mainbody {
            text-align: center;

        }

        .conternt2 table {
            border: 1px;
            margin: 20px 0 10px 0;
            border-top: 1px #666 solid;
            border-right: 1px #666 solid;
            border-left: 1px #666 solid;
        }

        .content2 td {
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-bottom-color: #999999;
            font-size: 12px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            border-left-width: 1px;
            border-left-style: solid;
            border-left-color: #999999;
            border-top-color: #999999;
            border-right-color: #999999;
            padding: 3;
        }

        .ctt2 td {
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-bottom-color: #999999;
            border-left-width: 1px;
            border-left-style: solid;
            border-left-color: #999999;
            border-top-color: #999999;
            border-right-color: #999999;
            padding: 3px;
            /*white-space:nowrap; test by ww */
        }

        .delUnderline a {
            text-decoration: none;
        }

        #leftmenu td {
            BORDER-bottom: 1px solid #CCCCCC;
            text-align: left;
            padding-top: 6px;
            padding-bottom: 6px;
            padding-left: 20px;
        }

        #leftmenu img {
            vertical-align: -20%;
            margin-right: 20px;
        }

        #cxtj img {
            vertical-align: -20%;
            margin-right: 5px;

        }

        .basediv table {
            margin: 10px;
        }

        #line1 {
            width: 96%;
            border-bottom-width: 1px;
            border-bottom-style: dashed;
            border-bottom-color: #2B63AE;
            margin-left: 20px;
        }

        #chaxuntable td {

            border-left: 0;
            text-align: left;
        }

        .btn {
            cursor: pointer;
            color: #FFFFFF;
            font-size: 12px;
            width: 65px;
            height: 22px;
            padding: 0px;
            border: 0px;
            background-image: url(${pageContext.request.contextPath }/images/button.gif);
        }

        @media print {
            .noprint {
                display: none;
            }
        }

        h4 {
            clear: both;
            color: #FF6600;
            line-height: 100%;
            margin: 4 4 2 2
        }

        .forumtitle h2 {
            float: left;
            color: #0578BC;
            margin-left: 10px;
            font-weight: bold;
        }

        .forumtitle em {
            float: right;
            text-align: right;
            margin-right: 4px;
        }

        .topiccontent h4 {
            width: 98%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-weight: normal;
        }

        .topiccontent a {
            color: #036;
            text-decoration: none;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" language="javascript">
        $(function(){
        	var back = $("#btnBack");
        	back.click(function(){
        		var url = '${pageContext.request.contextPath }/PersonalIncomeTaxSetting/1';
                window.location.href = url; 
        	})
        	
        })
            //var url='${pageContext.request.contextPath }/Appfunc/dataQuery.aspx'; 
            
    </script>
</head>
<body>
<form name="Form1" method="post" action="${pageContext.request.contextPath }/conditionSearch/1"
      onsubmit="javascript:return WebForm_OnSubmit();" id="Form1">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="/wEPDwULLTExODA3NjEzNTcPFgQeBmlzVmlld2geBmFlcFVybAUZLi4vQXBwZnVuYy9kYXRhUXVlcnkuYXNweBYEZg8VAg5jYWxlbmRhci16aC5qcwBkAgEPZBYGAgEPFgIeBXZhbHVlBQzlvIDlp4vmn6Xor6JkAgIPFQEM5Y+W5raI6L+U5ZueZAIDDw9kFgIeBXN0eWxlBW1tYXJnaW4tdG9wOiAyMHB4O2JvcmRlcjoxcHg7Ym9yZGVyLXRvcDoxcHggIzY2NiBzb2xpZDtib3JkZXItcmlnaHQ6MXB4ICM2NjYgc29saWQ7Ym9yZGVyLWxlZnQ6MXB4ICM2NjYgc29saWQ7FgoCAQ9kFgICAQ9kFgJmDxAPFgIeC18hRGF0YUJvdW5kZ2RkZGQCAg9kFgICAQ9kFgJmDxAPFgIfBGdkZGRkAgMPZBYCAgEPZBYCZg8QDxYCHwRnZGRkZAIED2QWAgIBD2QWAmYPEA8WAh8EZ2RkZGQCBQ9kFgICAQ9kFgJmDxAPFgIfBGdkZGRkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYFBQpjaGtBbGlhc18xBQpjaGtBbGlhc18yBQpjaGtBbGlhc18zBQpjaGtBbGlhc180BQpjaGtBbGlhc181Tijk28ARbzyRodE9EXm0VUGSBHQ=">
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


    <script src="/esweb/WebResource.axd?d=CsshuQOrF1UMaNI6nS1DEC5WBbgBgtrnqIIlWt-ihhE1&amp;t=636320251895468750"
            type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        function WebForm_OnSubmit() {
            if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
            return true;
        }
        //]]>
    </script>

    <div>

        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
               value="/wEWQwKj4pHyDgL2ktWKCwLLpviTCwKc34f5BAKb39/6BAKd34f5BAKd39v6BAKb34f5BAKb39v6BALOvoSGAgLI1vXkAwLFgbrdDwLJiLyTDgKQ4+rPBwKT4+rPBwLLpoSUCwKc37PSAwKb3+vRAwKd37PSAwKd3+/RAwKb37PSAwKb3+/RAwLOvrCtBQLI1sHPBALFgY72CALJiIi4CQK/p5GQCQLCp5GQCQLLpoCUCwKc36+PCgKb3/eMCgKd36+PCgKd3/OMCgKb36+PCgKb3/OMCgLOvqzwDALI1t2SDQLFgZKrAQLJiJRlAtqQr6UDAt2Qr6UDAsum7JMLApzf2+sCApvfg+gCAp3f2+sCAp3fh+gCApvf2+sCApvfh+gCAs6+2JQEAsjWqfYFAsWB5s8JAsmI4IEIAonV1eUEAozV1eUEAsum6JMLApzf98QJApvfr8cJAp3f98QJAp3fq8cJApvf98QJApvfq8cJAs6+9LsPAsjWhdkOAsWByuACAsmIzK4DAqS+8/oOAqe+8/oOKp1UYCT0BUnOgoQefI5/sle2TDg=">
    </div>
    <div id="mainbody">
        <table align="center" border="0" style="margin-top:20px">
            <tbody>
            <tr>
                <td>
                    <input onclick="if (typeof(Page_ClientValidate) == 'function') Page_ClientValidate(''); __doPostBack('btnQry','')"
                           name="btnQry" type="button" id="btnQry" class="btn"
                           onmouseover="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/bj-b2.gif)';"
                           onmouseout="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/button.gif)';" value="开始查询">
                </td>
                <td width="20px">
                    &nbsp;
                </td>
                <td>
                    <input type="button" id="btnBack" value="取消返回" class="btn"
                           onmouseover="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/bj-b2.gif)';"
                           onmouseout="javascript:this.style.backgroundImage='url(${pageContext.request.contextPath }/images/button.gif)';">

                </td>
            </tr>
            </tbody>
        </table>
        <div id="line1"></div>
		
        <table border="0" align="center">
            <tbody>
            <tr>
 
                <td valign="top">
                    <table id="tCond" cellspacing="0" cellpadding="0" align="Center" rules="all" class="content2"
                           border="1"
                           style="border-collapse:collapse;margin-top: 20px;border:1px;border-top:1px #666 solid;border-right:1px #666 solid;border-left:1px #666 solid;">
                        <tbody>
                        
                        <tr>
                            <td align="center" tid="129" colspan="4" style="background-color:#c9d7e4;height:20px;">
                                		个人所得税设置
                            </td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;"><input id="chkAlias_1" type="checkbox"
                                                                   name="chkAlias_1" value="taxgrade_grade"><label for="chkAlias_1">级数</label>
                            </td>
                            <td><select name="cboop1_1" id="cboop1_1">
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

                            </select></td>
                            <td><input name="txtv1_1" type="text" id="txtv1_1" style="border-style:None;"><span
                                    id="cpv1_1" style="color:Red;display:none;">*</span></td>
                            <td><input name="txtv2_1" type="text" id="txtv2_1" style="border-style:None;"><span
                                    id="cpv2_1" style="color:Red;display:none;">*</span></td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;"><input id="chkAlias_2" type="checkbox"
                                                                   name="chkAlias_2" value="taxgrade_start"><label
                                    for="chkAlias_2">起始金额</label></td>
                            <td><select name="cboop1_2" id="cboop1_2">
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

                            </select></td>
                            <td><input name="txtv1_2" type="text" id="txtv1_2" style="border-style:None;"><span
                                    id="cpv1_2" style="color:Red;display:none;">*</span></td>
                            <td><input name="txtv2_2" type="text" id="txtv2_2" style="border-style:None;"><span
                                    id="cpv2_2" style="color:Red;display:none;">*</span></td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;"><input id="chkAlias_3" type="checkbox"
                                                                   name="chkAlias_3" value="taxgrade_end"><label
                                    for="chkAlias_3">结束金额</label></td>
                            <td><select name="cboop1_3" id="cboop1_3">
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

                            </select></td>
                            <td><input name="txtv1_3" type="text" id="txtv1_3" style="border-style:None;"><span
                                    id="cpv1_3" style="color:Red;display:none;">*</span></td>
                            <td><input name="txtv2_3" type="text" id="txtv2_3" style="border-style:None;"><span
                                    id="cpv2_3" style="color:Red;display:none;">*</span></td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;"><input id="chkAlias_4" type="checkbox"
                                                                   name="chkAlias_4" value="taxgrade_rate"><label for="chkAlias_4">税率</label>
                            </td>
                            <td><select name="cboop1_4" id="cboop1_4">
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

                            </select></td>
                            <td><input name="txtv1_4" type="text" id="txtv1_4" style="border-style:None;"><span
                                    id="cpv1_4" style="color:Red;display:none;">*</span></td>
                            <td><input name="txtv2_4 " type="text" id="txtv2_4" style="border-style:None;"><span
                                    id="cpv2_4" style="color:Red;display:none;">*</span></td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;"><input id="chkAlias_5" type="checkbox"
                                                                   name="chkAlias_5" value="taxgrade_speed"><label for="chkAlias_5">速扣</label>
                            </td>
                            <td><select name="cboop1_5" id="cboop1_5">
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

                            </select></td>
                            <td><input name="txtv1_5" type="text" id="txtv1_5" style="border-style:None;"><span
                                    id="cpv1_5" style="color:Red;display:none;">*</span></td>
                            <td><input name="txtv2_5" type="text" id="txtv2_5" style="border-style:None;"><span
                                    id="cpv2_5" style="color:Red;display:none;">*</span></td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td valign="top">
                    <div id="ValidationSummary1" style="color:Red;width:314px;display:none;">

                    </div>
                </td>
            </tr>
            </tbody>
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


</body>
</html>