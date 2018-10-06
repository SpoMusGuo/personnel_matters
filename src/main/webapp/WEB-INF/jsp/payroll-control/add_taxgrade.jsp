<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD id=Head1><TITLE>模板</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            href="${pageContext.request.contextPath }/css/index_body_Manage.css" type=text/css rel=stylesheet><LINK
            href="${pageContext.request.contextPath }/css/index_body_Style.css" type=text/css rel=stylesheet>
 <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script>
        $(function(){
            var title = $(".text");
            var input = $(".active>input");
            input.focus(function(){
                var index = $(this).parent().index();
                title.eq(index).css("background-color","rgba(195,195,195,.5)");
            })
            input.blur(function () {
                var index = $(this).parent().index();
                title.eq(index).css("background-color","white");
            })
        })
    </script>
    <script>
	    $(function(){
	    	 var back=$("#back");
	         back.click(function(){
	        	 window.location.href="${pageContext.request.contextPath }/PersonalIncomeTaxSetting/1";
	         })
	    })
      
    </script>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }

        .update{
            width: 350px;
            height: 101px;
            position: relative;
        }
        .update h3{
            text-align: center;
        }
        .update .title td{
            text-align: center;

        }

        .update .normal td input{
            text-align: right;
            border: none;
            width: 100%;
            height: 100%;
        }

        .update tr td{
            height: 30px;
            width: 75px;
            box-sizing: border-box;
        }
      
        .onlyread input{
            background-color: rgba(195,195,195,.5);

        }
        .active input:focus{
            background-color: rgb(244,248,254);

        }
    </style>


    <META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/addTaxGrade" method=post autocomplete="off" onSubmit="return $.addCheck()">
	    

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
			            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg>
			            	<IMG src="${pageContext.request.contextPath }/images/new_022.jpg" border=0> 
			             </TD>
			             <TD vAlign=top width="100%" bgColor=#ffffff>
				             <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
				                <div class="place">
				                 	<TR>
				                        <TD class=manageHead>当前位置：工资管理 &gt; 个人所得税设置&gt; 新增个人所得税等级 </TD>
				                    </TR>
				                    <TR>
				                     	<TD height=1></TD>
				                    </TR>
				                </div>
			                </TABLE>
			                <div style="margin-top: 30px; margin-left: 38px; margin-bottom:  20px;">
			                	<span id="lbl0" align="left" style="color:#FF9900;font-weight:bold;margin-left:40px;">[ 新增个人所得税等级 ]</span>
			                </div>
				             <div class="update">
					            <TABLE cellSpacing=0 border=1>
					             
						            	<tbody>
							             	<tr class="title">
							                    <td class="text">级数</td>
							                    <td class="text">起始金额</td>
							                    <td class="text">结束金额</td>
							                    <td class="text">税率</td>
							                    <td class="text">速扣</td>
							                </tr>
							                <tr class="normal">
							                    <td id="onlyread" class="active"><input id="grade" name="taxgrade_grade" type="number" required="required"/></td>
							                    <td class="active"><input name="taxgrade_start" type="number" required="required"/></td>
							                    <td class="active"><input name="taxgrade_end" type="number" required="required"/></td>
							                    <td class="active"><input name="taxgrade_rate" type="number" step="0.01" required="required"/></td>
							                    <td class="active"><input name="taxgrade_speed" type="number" required="required"/></td>
							                </tr>
							                
						            	</tbody>
					           		</TBODY>
					           	  
					          	</TABLE> 
					          	</div>
				          	<input class="button" id="save" type="submit" value="新增" name="add" style="position: relative;right: -226px;top:-137px">
			           		<input class="button" id="back" type="button" value="返回" name="add" style="position: relative;right: -220px;top:-137px">
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
    <script type="text/javascript">
    $(function(){
            $.addCheck = function(){
            	var grade = $("#grade").val();
            	var res;
            	$.ajaxSetup({   
                    async : false  
                }); 
            	$.post(
					"${pageContext.request.contextPath }/checkTaxGrade",
					"grade="+grade,
					function(result){
						res = result;
				})
				if(res=='true'){
					alert("添加成功！")
					return true;
				}else{
					alert("该个人所得税等级已存在，不能重复添加")
					return false;
				}
            }
    })
    </script>
</BODY>

</HTML>
