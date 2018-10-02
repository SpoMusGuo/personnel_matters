<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD id=Head1>
	<TITLE>人力资源管理系统</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    
    <STYLE type=text/css>BODY {
        FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
    }
    TD {
        FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
    }
    </STYLE>

    <META content="MSHTML 6.00.6000.16809" name=GENERATOR>
</HEAD>
<BODY>
<FORM id=form1 name=form1
      action="${pageContext.request.contextPath }/index" method=post onSubmit="return loginCheck()">
    <DIV id=UpdatePanel1>
        <DIV id=div1
             style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>
        <DIV id=div2
             style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>
        <SCRIPT language=JavaScript>
            var speed=20;
            var temp=new Array();
            var clipright=document.body.clientWidth/2,clipleft=0
            for (i=1;i<=2;i++){
                temp[i]=eval("document.all.div"+i+".style");
                temp[i].width=document.body.clientWidth/2;
                temp[i].height=document.body.clientHeight;
                temp[i].left=(i-1)*parseInt(temp[i].width);
            }
            function openit(){
                clipright-=speed;
                temp[1].clip="rect(0 "+clipright+" auto 0)";
                clipleft+=speed;
                temp[2].clip="rect(0 auto auto "+clipleft+")";
                if (clipright<=0)
                    clearInterval(tim);
            }
            tim=setInterval("openit()",100);
        </SCRIPT>

        <DIV>&nbsp;&nbsp; </DIV>
        <DIV>
            <TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
                <TBODY>
	                <TR>
	                    <TD style="HEIGHT: 105px"><IMG src="${pageContext.request.contextPath }/images/login_1.gif"
	                                                   border=0></TD></TR>
	                <TR>
	                    <TD background=${pageContext.request.contextPath }/images/login_2.jpg height=300>
	                        <TABLE height=300 cellPadding=0 width=900 border=0>
	                            <TBODY>
	                                <TR>
	                                    <TD colSpan=2 height=35>
	                                    </TD>
	                                </TR>
	                                    <TR>
	                                        <TD width=360></TD>
	                                        <TD>
	                                            <TABLE cellSpacing=0 cellPadding=2 border=0>
	                                                <TBODY>
	                                                    <TR>
	                                                        <TD style="HEIGHT: 28px" width=80>登 录 名：</TD>
	                                                        <TD style="HEIGHT: 28px" width=150>
	                                                        	<INPUT id=txtName style="WIDTH: 130px" name=txtName>
	                                                        </TD>
	                                                        <TD style="HEIGHT: 28px" width=370><SPAN
	                                                                id=RequiredFieldValidator3
	                                                                style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入登录名</SPAN></TD></TR>
	                                                    <TR>
	                                                        <TD style="HEIGHT: 28px">登录密码：</TD>
	                                                        <TD style="HEIGHT: 28px">
	                                                       	 <INPUT id=txtPwd style="WIDTH: 130px" type=password name=txtPwd>
	                                                        </TD>
	                                                        <TD style="HEIGHT: 28px"><SPAN id=RequiredFieldValidator4
	                                                                                       style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入密码</SPAN>
	                                                        </TD>
	                                                    </TR>
	
	                                                    <TR>
	                                                        <TD style="HEIGHT: 18px"></TD>
	                                                        <TD style="HEIGHT: 18px"></TD>
	                                                        <TD style="HEIGHT: 18px"></TD></TR>
	                                                    <TR>
	                                                        <TD></TD>
	                                                        <TD>
	                                                            <INPUT id=btn
	                                                                   style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
	                                                                   
	                                                                   type=image src="${pageContext.request.contextPath }/images/login_button.gif" name=btn>
	                                                        </TD>
	                                                    </TR>
	                                                </TBODY>
	                                            </TABLE>
	                                        </TD>
	                                    </TR>
	                            </TBODY>
	                        </TABLE>
	                    </TD>
	                </TR>
	                <TR>
                    <TD><IMG src="${pageContext.request.contextPath }/images/login_3.jpg"
                             border=0>
                    </TD>
                </TR>
                </TBODY>
             </TABLE>
        </DIV>
    </DIV>


</FORM>
<script type="text/javascript">
	function loginCheck(){
		var form = document.getElementById("form1");
		var userName = document.getElementById("txtName").value;
		var userPassword = document.getElementById("txtPwd").value;
		var cueUserName = document.getElementById("RequiredFieldValidator3");
		var cueUserPassword = document.getElementById("RequiredFieldValidator4");
		if(userName.trim().length==0||userPassword.trim().length==0){
			cueUserName.style.visibility = "hidden";
			cueUserPassword.style.visibility = "hidden";
			if(userName.trim().length==0){
				cueUserName.style.visibility = "visible";
			}
			if(userPassword.trim().length==0){
				cueUserPassword.style.visibility = "visible";
			}
			return false;
		}
		return true; 
	}
	index_body.jsp
</script>
</BODY>
</HTML>
