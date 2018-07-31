<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 결과</h2>
<%
	int val = (Integer.parseInt(request.getParameter("val")));

	if(val >= 10){
		out.println("10보다 크거나 같은 값 입니다");
	}else{
		out.println("10보다 작은 값 입니다");	
	}
%>
</body>
</html>