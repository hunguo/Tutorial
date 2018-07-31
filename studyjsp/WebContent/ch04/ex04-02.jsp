<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String fileName = request.getRequestURI();
application.log("My Log : " + fileName + " 에서 작성");%>
</body>
</html>