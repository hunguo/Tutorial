<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<form method="post" action="ex1pro.jsp">
 <dl>
    <dd>
      <label for="name">이름</label>
      <input id="name" name="name" type="text"
                size="20"  placeholder="홍길동" maxlength="10" autofocus required>
    </dd>
     <dd>
      <label for="email">이메일</label>
      <input id="email" name="email" type="email"
                size="30" placeholder="aaaa@aaa.com" autofocus required>
    </dd>
     <dd>
      <label for="comment">방문소감</label>
      <textarea id="comment" name="comment" rows="10" cols="50"></textarea>
    </dd>
     <dd>
      <label for="passwd">비밀번호</label>
      <input id="passwd" name="passwd" type="text"
                 placeholder="6~16자 숫자/문자" autofocus required>
    </dd>
    <dd>
      <input type="submit" value="입력완료">
      <input type="reset" value="다시입력">
    </dd>
  </dl>
</form>