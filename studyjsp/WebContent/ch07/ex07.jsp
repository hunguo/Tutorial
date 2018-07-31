<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Insert title here</title>
<style type="text/css">
	#result{
		width  : 200px;
		height : 200px;
		border : 5px double #4499ff;
	}
</style>
<script src="../js/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#b1").click(function(){
		$.post("prosess2.jsp",				
		{
			name:"kim",
			stus:"home"
		},
		function(data,status){
		if(status = "success")
			$("#result").html(data);
		});
	});
});
</script>
</head>
<body>
	<button id="b1">겨얼과</button>
	<div id="result"></div>
</body>
</html>