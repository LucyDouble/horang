<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
 </script>
</head>
<body>
	<span class="top-menu">실습실 | 컴퓨터 | SW | SW 라이선스 | 사용자</span>
	<span class="top-account"><c:out value="${sessionScope.isLogin}"></c:out> 님
		<button type="button" onclick="location.href='/logout'">로그아웃</button>
	</span>

	<br>
	<h4>사용자 목록</h4>
	<hr>
	<br>
	<table border="1" style="width: 100%">
		<tr>
			<td align="center">아이디</td>
			<td align="center">사용자 명</td>
			<td align="center">권한</td>
		</tr>
		<c:forEach items="${accounts}" var="account">
			<tr>
				<td align="center"><a href="/account/${account.id}/form">${account.id}</a></td>
				<td align="center"><c:out value="${account.name}" /></td>
				<td align="center"><c:out value="${account.authority}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<div align="right">
		<button type="button" onclick="location.href='/account/form'">등록</button>
	</div>
</body>
</html>