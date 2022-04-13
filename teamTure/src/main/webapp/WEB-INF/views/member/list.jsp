<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<h2>회원목록</h2>
<input type="button" value="회원등록" onclick="location.href='/controller/member/create.do'">

<table border="1">
	<tr>
		<th>회원번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>닉네임</th>
		<th>핸드폰</th>
		<th>주소</th>
		<th>성별</th>
		<th>생년월일</th>
		<th>이메일</th>
	</tr>
	<c:forEach items="${list}" var="vo">
	<tr>
		<td>${vo.midx}</td>
		<td>${vo.mid}</td>
		<td>${vo.mname}</td>
		<td>${vo.mnic}</td>
		<td>${vo.mphone}</td>
		<td>${vo.maddr}</td>
		<td>${vo.mgender}</td>
		<td>${vo.mbirth}</td>
		<td>${vo.memail}</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>