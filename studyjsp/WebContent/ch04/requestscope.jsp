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
	request.setAttribute("name", "홍길동");

	//또 하나의 새로운 리퀘스트 요청이므로
	//위의 리퀘스트에 적합한 정보를 참조 할수 없다
	response.sendRedirect("requestinfo.jsp");
%>

<%-- <a href="requestinfo.jsp"> requestscope 정보확인</a>--%>
</body>
</html>