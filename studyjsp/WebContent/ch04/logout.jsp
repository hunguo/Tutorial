<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
 
<%
  session.invalidate(); //세션정보를 초기화 로그아웃
  response.sendRedirect("sessionTestForm.jsp");
%>