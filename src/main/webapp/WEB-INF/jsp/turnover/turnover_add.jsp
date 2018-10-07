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
<title>人员离职-新增</title>
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
		.nice-text1{
		position: relative;
		background-size:18px;
		/* background: #fff ; */
		width:15%;
		color:#9fa3a7;
		font-size:14px;
		text-align:center;
		float:left;
		border-radius:5px;
		height:44px;
		line-height:44px;

	}
	.nice-text2{
		position: relative;
		background-size:18px;
		background: #fff ;
		width:80%;
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
	<h1 style="text-align: center; margin-bottom: 10px">人员离职表</h1>
	<form action="/personnel_matters/turnoverToAdd">
			<div class="pc-kk-form-list">
			<input type="text" placeholder="员工编号" name="emp_id">
		</div>
		<div class="pc-kk-form-list">
			<div class="nice-select" name="nice-select">
				<input type="text" value="离职类型" name="turnover_type">
				<ul>
					<li data-value="技术支持部">辞退</li>
					<li data-value="人力资源部">外修</li>
					<li data-value="行政部">退休</li>
				</ul>
			</div>
			
		</div>
		<div class="pc-kk-form-list pc-kk-form-list-clear">
			<div class="nice-text1" >
				离职时间
			</div>
			<div class="nice-text2" style="float:right">
				<input type="date" name="turnover_time">
			</div>
		</div>
		<div class="pc-kk-form-list" style="height:auto">
			<textarea name="turnover_notes">离职说明</textarea>
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