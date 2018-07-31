<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="ex1" class="ex1.ex1">
     <jsp:setProperty name="ex1" property="name"/>
     <jsp:setProperty name="ex1" property="email"/>
     <jsp:setProperty name="ex1" property="comment"/>
     <jsp:setProperty name="ex1" property="passwd"/>
</jsp:useBean>

입력된 이름: <jsp:getProperty name="ex1" property="name"/><br>
입력된 이메일: <jsp:getProperty name="ex1" property="email"/><br>
입력된 방문소감: <jsp:getProperty name="ex1" property="comment"/><br>
