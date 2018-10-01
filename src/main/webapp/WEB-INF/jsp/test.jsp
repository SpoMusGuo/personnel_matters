<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src="images/捕获.PNG" />
	<br />
	<table border="1">
		<c:forEach items="${list }" var="stu">
			<tr>
				<td>${stu.sno }</td>
				<td>${stu.sname }</td>
				<td>${stu.sage }</td>
				<td><fmt:formatDate value="${stu.sdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td><a href="delete/${stu.sno }">删除</a></td>
			</tr>
		</c:forEach>
		<h1>${pageContext.request.contextPath }</h1>
		<h1><%= request.getContextPath() %></h1>
	</table>
</body>
</html>