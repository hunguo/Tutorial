<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="container">
		<h1>Hyundai 직업전문학교</h1>
		<form action='${pageContext.request.contextPath }/login' method='post'>
			<input type="hidden" name="orgReqPath" value="${orgReqPath }" />
			<div style="color: red">${error}</div>
			ID: <input type='text' name='id'><br /> 
			Password: <input type='password' name='pw'><br /> 
			 <input type='submit' value='login' />
		</form>
	</div>

<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />
