<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/index_body_Style.css" />
<link rel="stylesheet" href="../css/index_menu.css" />
<link rel="stylesheet" href="../css/index_body_Manage.css" />
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/Common.js"></script>
<script src="../js/FrameDiv.js"></script>
<style>
	.top p{
	    FONT-WEIGHT: bold;
	    COLOR: #000000;
	    BACKGROUND-COLOR: #f4f4f4;
	    border: #cccccc 1px solid;
	    height: 30px;
	    line-height: 30px;
	}
	.main {
		margin-top: 20px;
	}
	
	/*选择模板*/
	.mould-div{
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background: rgba(0,0,0,.5);
		display: none;	
	}
	.mould{
		margin: 200px auto;
		width: 340px;
		height: 200px;
		background: white;
	}
	.mould-title{
		margin-bottom: 20px;
		background: gray;
		height: 30px;
		line-height: 30px;
		color: black;
	}
	.mould-left{
		float: left;
		border: 1px solid black;
		height: 120px;
		width: 210px;
	}
	
	.mould-right{
		float: right;
		width: 110px;
	}
	
	/*关闭按钮*/
	#close{
		float: right;
		margin-top: 8px;
		margin-right: 8px;
	}
</style>
</head>
<body>
	<div class="top">
		<p>您的位置 : &gt; 下载EXCEL模板 </p>
		<br />
		<img src="../images/downexcel.jpg" />
	</div>
	<div class="main">
		<div class="select">
			<span>1、选择模板名称：</span><button id="sbt">选择</button>
		</div>
		<div class="mould-div">
			<div class="mould">
				<div class="mould-title">
					<span>选择要下载的模板</span>
					<img alt="" src="../images/close.gif" id="close"/>
				</div>
				<div class="mould-left">
		              <form id="form1" name="form1" action="YHMenu.aspx" method="post">
		       
		       <table cellspacing="0" cellpadding="0" width="210" align="center" border="0">
		           <tbody>
		               <tr>
		                   <td width="15" background="/personnel_matters/images/new_008.jpg"></td>
		                   <td valign="top" width="180" bgcolor="#ffffff">
		                       <table cellspacing="0" cellpadding="3" width="165" align="center" border="0">
		                           <tbody>
		
		                               <tr>
		                                   <td class="mainMenu" onclick="MenuDisplay('table_1');"><span class="span" id="table_1Span">＋</span> 保险管理</td>
		                               </tr>
		                               <tr>
		                                   <td>
		                                       <table id="table_1" style="display: none;" cellspacing="0" cellpadding="2" width="155" align="center" border="0">
		                                           <tbody>
		                                           <tr>
		                                               <td class="menuSmall"><a class="style2"  target="dmMain" index="one">保险信息表</a></td></tr>
		                                           <tr>
		                                               <td class="menuSmall"><a class="style2"  target="dmMain" index="two">保险类型表</a></td></tr>
		                                           </tbody></table></td></tr>
		                               <tr>
		                                   <td background="/personnel_matters/images/new_027.jpg" height="1"></td></tr>
		                               <tr>
		                                   <td class="mainMenu" onclick="MenuDisplay('table_2');"><span class="span" id="table_2Span">＋</span> 工资管理</td></tr>
		                               <tr>
		                                   <td>
		                                       <table id="table_2" style="display: none;" cellspacing="0" cellpadding="2" width="155" align="center" border="0">
		                                            <tbody>
		                                                <tr>
		                                                    <td class="menuSmall"><a class="style2"  target="dmMain" index="three">－ 个人所得税设置</a></td></tr>
		                                                <tr>
		                                                    <td class="menuSmall"><a class="style2"  target="dmMain" index="four">－ 计件产品设置</a></td></tr>  
		                                            </tbody>
		                                        </table>
		                                    </td>
		                                </tr>
		 
		                            </tbody>
		                        </table>
		                    </td>
		                    <td width="15" background="/personnel_matters/images/new_009.jpg"></td>
		                </tr>
		        	</tbody>
		        </table>
		        <table cellspacing="0" cellpadding="0" width="210" align="center" border="0">
		            <tbody>
		                <tr>
		                    <td width="15"><img src="/personnel_matters/images/new_010.jpg" border="0"></td>
		                    <td align="middle" width="180" background="/personnel_matters/images/new_011.jpg" height="15"></td>
		                    <td width="15"><img src="/personnel_matters/images/new_012.jpg" border="0">
		                    </td>
		                </tr>
		            </tbody>
		        </table> 
		</form>
		
				</div>
				<div class="mould-right">

					<button id="no">取消</button>
				</div>
			</div>
		</div>
		<div class="down-href" style="display: none;">
			2、模板文件的下载链接：<a href="${pageContext.request.contextPath }/file/down" id="file">下载</a>（在左边的链接上单击鼠标右键，在弹出的菜单上选择 [目标另存为..] 将该文件保存到本机。）
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("#sbt").click(function(){
				$(".mould-div").show();
			})
			
			$("#close").click(function(){
				$(".mould-div").hide();
			})
			$("#no").click(function(){
				$(".mould-div").hide();
			})
			
			//下载设置
			$(".style2").click(function(){
				$(".mould-div").hide();
				$("#file").text($(this).text());
				var href = $("#file").attr("href");
				var index = $(this).attr("index");
				
				$("#file").attr("href",href+"?type=" + index);
				$(".down-href").show();
			})
			
		})
	</script>
</body>
</html>