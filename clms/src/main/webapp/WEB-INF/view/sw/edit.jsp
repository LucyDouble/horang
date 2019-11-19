<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SW 수정</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
 </script>
</head>
<body>
	<span class="top-menu"><a href="/lab">실습실</a>  |  <a href="/computer">컴퓨터 </a>  |  <a href="/sw">SW</a>  |  <a href="/swlicense">SW 라이선스</a>  |  <a href="/account">사용자</a></span>
	<span class="top-account"><c:out value="${sessionScope.isLogin}"></c:out> 님
	<button type="button" onclick="location.href='/logout'">로그아웃</button>
	</span>
	<br/>
	<br/>
	<h2>SW 수정</h2>
	<hr/>
	<br/>
	<br/>
	<div class="from-group" align="center">
		<form action="${pageContext.request.contextPath}/sw/${sw.no}" method="post" id="change_form">
			<input type="hidden" name="_method" />
			<input type="hidden" name="no" value="${sw.no}" />
			SW 이름 : <input type="text" name="name" value="${sw.name}"><br/>
			구분 : <select name="division">
					<c:if test="${sw.division eq 'F'}">
						<option value="F" selected="selected" >무료
						<option value="P" >유료 
					</c:if>
					
					<c:if test="${sw.division eq 'P'}">
						<option value="F" >무료
						<option value="P" selected="selected" >유료 
					</c:if>
				 </select><br/>
			SW 사용 부서 명 : <input type="text" name="useDept" value="${sw.useDept}"><br/>
			SW 용도 : <input type="text" name="usage" value="${sw.usage}"><br/>
			SW 시리얼 넘버 : <input type="text" name="serialNumber" value="${sw.serialNumber}"><br/>
			<br/>
			<div align="right">
		        <button type="button" id="edit_btn">수정</button>
		        <button type="button" id="delete_btn">삭제</button>
		        <button type="button" id="list_btn">목록</button>
		    </div>
		</form>
	</div>
</body>

<script>
	$(document).ready(function() {
		$("#delete_btn").click(function() {	// 액션 속성 바꾸기
			$('input[name=_method]').val('delete'); //메소드명 바꿔주기
			$('#change_form').submit(); // 폼 전송
		});

	
		$("#edit_btn").click(function() {
			$('#change_form').attr("action", "/sw"); 	// 액션 속성 바꾸기
			$('input[name=_method]').val('put'); //메소드명 바꿔주기
			$('#change_form').submit(); // 폼 전송
		});
		
		$("#list_btn").click(function() {
			$('#change_form').attr("action", "/sw");
			$('input[name=_method]').val('get');
			$('#change_form').submit();
		});
	});
</script>
</html>