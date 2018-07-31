<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="TestBean" class="temp.bean.TestBean">
     <jsp:setProperty name="TestBean" property="id"/>
     <jsp:setProperty name="TestBean" property="password"/>
     <jsp:setProperty name="TestBean" property="name"/>
     <jsp:setProperty name="TestBean" property="addr"/>
</jsp:useBean>

입력된 아이디: <jsp:getProperty name="TestBean" property="id"/><br>
입력된 비밀번호: <jsp:getProperty name="TestBean" property="password"/><br>
입력된 이름: <jsp:getProperty name="TestBean" property="name"/><br>
입력된 주소: <jsp:getProperty name="TestBean" property="addr"/>