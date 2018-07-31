<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-1.11.0.min.js"></script>
<script>
  $(document).ready(function(){
	  $("#b1").click(function(){//[결과]버튼을 클릭하면 자동실행
		var query = {
					userid : $("#userid").val();
					password : $("#password").val();
		
	  }
	  $.ajax{
		  type: "post",
		  url:"loginPro.jsp",
		  data: query,
		  success: function(data){
			  
		  }
	  }
	
     });
  });
</script>
</head>
<body>

	아이디: <input type="text" name="userid" id="userid"><br>
	비번: <input type="password" name="password" id="password"><br>
	 <button id="b1">결과</button>
  <div id="result"></div>

</body>
</html>