<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
			<tr>
				<td>物品编号</td>
				<td>物品名称</td>
				<td>物品类型</td>
				<td>单价</td>
				<td>数量</td>
				<td>金额</td>
				<td>计算库存</td>
				<td>登记时间</td>
				<td>备注</td>
				<td>操作</td>
				<td>操作</td>
			</tr>
		<c:forEach items="${goods}" var="good">
			<tr>
				<td>${good.good_id}</td>
				<td>${good.good_name}</td>
				<td>${good.good_type}</td>
				<td>${good.good_price}</td>
				<td>${good.good_count}</td>
				<td>${good.good_count*good.good_price}</td>
				<td>${good.good_repetory}</td>
				<td><fmt:formatDate value="${good.good_register_date}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${good.good_notes}</td>
				<td><a href="${pageContext.request.contextPath}/emp/remove.do?empno=${emp.empno}">删除</a></td>
				<td><a href="${pageContext.request.contextPath}/emp/edit.do?empno=${emp.empno}">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>