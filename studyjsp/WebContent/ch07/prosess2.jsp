<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<%
  String resultStr = "처리결과: <br>";
  String name = request.getParameter("name");
  String stus = request.getParameter("stus");
  resultStr += "이름은 " + name + "입니다,<br>";
  resultStr += "현재상태는  " + stus + "입니다.";
  out.println(resultStr);
%>
