<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/firstHead.jsp" %>
<%@ include file="/WEB-INF/views/include/secondHead.jsp" %>
</head>
<body>
<div>이곳은 마이페이지 입니다.</div>
<table border="1">
	<tr>
		<th>아이디</th>
		<td>${authentication.userId}</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>${authentication.password}</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${authentication.tell}</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${authentication.email}</td>
	</tr>

</table>


</body>
</html>