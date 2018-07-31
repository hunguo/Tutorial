<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <% request.setCharacterEncoding("utf-8");%>
<h2>방명록</h2>
<%
    String name = request.getParameter("name");
	String post = request.getParameter("post");
%>
<dl>
  이름:<%=name%><br>
  내용:<%=post%>
</dl>
