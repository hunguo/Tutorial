<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "doccoms";
	String name = "홍길동";
%>
<h1>겟방식</h1>
<a href="b.jsp?id=<%=id %>&name=<%=name%>">get방식</a>
</body>
</html>