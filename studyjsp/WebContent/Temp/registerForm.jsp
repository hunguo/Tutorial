<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<form method="post" action="registerPro.jsp">
 <dl>
    <dd>
      <label for="id">아이디</label>
      <input id="id" name="id" type="text"
                 placeholder="aaaa" autofocus required>
    </dd>
     <dd>
      <label for="password">비밀번호</label>
      <input id="password" name="password" type="password"
                 placeholder="비밀번호" autofocus required>
    </dd>
     <dd>
      <label for="name">이름</label>
      <input id="name" name="name" type="text"
                 placeholder="이름" autofocus required>
    </dd>
     <dd>
      <label for="addr">주소</label>
      <input id="addr" name="addr" type="text"
                 placeholder="주소를 입력하시오" autofocus required>
    </dd>
    <dd>
      <input type="submit" value="입력완료">
      <input type="reset" value="다시입력">
    </dd>
  </dl>
</form>