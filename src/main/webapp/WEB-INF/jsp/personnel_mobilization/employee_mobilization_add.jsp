<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>人员调动-新增</title>
<style>
	img {
		border: 0;
	}

	body {
		background: #f7f7f7;
		color: #666;
		font: 12px/150% Arial,Verdana, "microsoft yahei";
	}

	html, body, div, dl, dt, dd, ol, ul, li, h1, h2, h3, h4, h5, h6, p, blockquote, pre, button, fieldset, form, input, legend, textarea, th, td {
		margin: 0;
		padding: 0;
	}

	article,aside,details,figcaption,figure,footer,header,main,menu,nav,section,summary {
		display: block;
		margin: 0;
		padding: 0;
	}

	audio,canvas,progress,video {
		display: inline-block;
		vertical-align: baseline;
	}

	a {
		text-decoration: none;
		color: #08acee;
	}

	a:active,a:hover {
		outline: 0;
	}

	button {
		outline: 0;
	}

	mark {
		color: #000;
		background: #ff0;
	}

	small {
		font-size: 80%;
	}

	img {
		border: 0;
	}

	button,input,optgroup,select,textarea {
		margin: 0;
		font: inherit;
		color: inherit;
		outline: none;
	}

	li {
		list-style: none;
	}

	i {
		font-style: normal;
	}

	a {
		color: #666;
	}

	a:hover {
		color: #eee;
	}

	em {
		font-style: normal;
	}

	h2, h3 {
		font-family: "microsoft yahei";
		font-weight: 100;
	}



	/* ------------------- */
	::-moz-placeholder {
		color: #9fa3a7;
	}

	::-webkit-input-placeholder {
		color: #9fa3a7;
	}

	:-ms-input-placeholder {
		color: #9fa3a7;
	}


	.pc-kk-form{
		width: 500px;
		padding:15px 20px;
	}
	.pc-kk-form-list{
		background:#fff;
		border:1px solid #e5e5e5;
		border-radius:5px;
		height:44px;
		line-height:44px;
		margin-bottom:10px;
	}
	.pc-kk-form-list input{
		width:100%;
		border:none;
		background:none;
		color:#9fa3a7;
		font-size:14px;
		height: 36px;
		padding: 4px 10px;
	}
	.pc-kk-form-list textarea{
		background:none;
		border:none;
		height:60px;
		padding:10px;
		resize:none;
		width:94%;
		line-height:22px;
		color:#9fa3a7;
		font-size:14px;
	}
	.nice-text{
		position: relative;
		background-size:18px;
		background: #fff ;
		width:47%;
		float:left;
		border:1px solid #e5e5e5;
		border-radius:5px;
		height:44px;
		line-height:44px;

	}

	.nice-select{
		position: relative;
		background: #fff url(images/a2.jpg) no-repeat right center;
		background-size:18px;
		/*width:47%;*/
		/*float:left;*/
		border:1px solid #e5e5e5;
		border-radius:5px;
		height:44px;
		line-height:44px;
	}

	.nice-select ul{
		width: 100%;
		display: none;
		position: absolute;
		left: -1px;
		top: 44px;
		overflow: hidden;
		background-color: #fff;
		max-height: 150px;
		overflow-y: auto;
		border: 1px solid #b9bcbf;
		z-index: 9999;
		border-radius:5px;

	}
	.nice-select ul li{
		padding-left:10px;
	}
	.nice-select ul li:hover{
		background:#f8f4f4;
	}
	.pc-kk-form-list-clear{
		background:none;
		border:none;
	}
	.pc-kk-form-btn button{
		background:#ec5224;
		color:#fff;
		border:none;
		width:100%;
		height:50px;
		line-height:50px;
		font-size:16px;
		border-radius:50px;
	}
</style>
</head>
<body>
<div class="pc-kk-form">
	<h1 style="text-align: center; margin-bottom: 10px">人员调动表</h1>
	<form action="">
			<div class="pc-kk-form-list pc-kk-form-list-clear">
			<div class="nice-text" >
				<input type="text" placeholder="员工姓名" >
			</div>
			<div class="nice-text" style="float:right">
				<input type="text" placeholder="员工编号">
			</div>
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="origin-dept" value="原部门">
				<ul>
					<li data-value="技术支持部">技术支持部</li>
					<li data-value="人力资源部">人力资源部</li>
					<li data-value="行政部">行政部</li>
					<li data-value="研发部">研发部</li>
					<li data-value="销售部">销售部</li>
					<li data-value="市场部">市场部</li>
					<li data-value="财务部">财务部</li>
					<li data-value="企管部">企管部</li>
				</ul>
			</div>
			
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="origin-post" value="原职务">
				<ul>
					<li data-value="总经理">总经理</li>
					<li data-value="总经理助理">总经理助理</li>
					<li data-value="主任">主任</li>
					<li data-value="主任助理">主任助理</li>
					<li data-value="项目经理">项目经理</li>
					<li data-value="经理">经理</li>
					<li data-value="经理助理">经理助理</li>
					<li data-value="副经理">副经理</li>
					<li data-value="普通职员">普通职员</li>
				</ul>
			</div>
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="new-dept" value="新部门">
				<ul>
					<li data-value="技术支持部">技术支持部</li>
					<li data-value="人力资源部">人力资源部</li>
					<li data-value="行政部">行政部</li>
					<li data-value="研发部">研发部</li>
					<li data-value="销售部">销售部</li>
					<li data-value="市场部">市场部</li>
					<li data-value="财务部">财务部</li>
					<li data-value="企管部">企管部</li>
				</ul>
			</div>
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="new-post" value="原职务">
				<ul>
					<li data-value="总经理">总经理</li>
					<li data-value="总经理助理">总经理助理</li>
					<li data-value="主任">主任</li>
					<li data-value="主任助理">主任助理</li>
					<li data-value="项目经理">项目经理</li>
					<li data-value="经理">经理</li>
					<li data-value="经理助理">经理助理</li>
					<li data-value="副经理">副经理</li>
					<li data-value="普通职员">普通职员</li>
				</ul>
			</div>
		</div>
		<div class="pc-kk-form-list">
			<input type="new-sal" placeholder="新工资">
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="mobility-type" value="调动类型">
				<ul>
					<li data-value="晋升">晋升</li>
					<li data-value="降级">降级</li>
					<li data-value="平调">平调</li>
					<li data-value="轮岗">轮岗</li>
				</ul>
			</div>
		</div>
		<div class="pc-kk-form-list" style="height:auto">
			<textarea>备注信息</textarea>
		</div>
		<div class="pc-kk-form-btn">
			<button>提交</button>
		</div>
	</form>
</div>


<script type="text/javascript" src="js/jquery.min.js"></script>

<script>

	$('[name="nice-select"]').click(function(e){

		$('[name="nice-select"]').find('ul').hide();

		$(this).find('ul').show();

		e.stopPropagation();

	});

	$('[name="nice-select"] li').hover(function(e){

		$(this).toggleClass('on');

		e.stopPropagation();

	});

	$('[name="nice-select"] li').click(function(e){

		var val = $(this).text();

		$(this).parents('[name="nice-select"]').find('input').val(val);

		$('[name="nice-select"] ul').hide();

		e.stopPropagation();

	});

	$(document).click(function(){

		$('[name="nice-select"] ul').hide();

	});

</script>
</body>
</HTML>