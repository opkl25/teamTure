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
	

	<%@ include file = "/resources/header.jsp" %>
	
	
	<div class="container">
	
		  <div class="bs-component container">
	              <nav class="navbar navbar-expand-lg navbar-light bg-light">
	                <div class="container-fluid ">
	                  <div class="collapse navbar-collapse" id="navbarColor03">
	                    <ul class="navbar-nav me-auto">
	                      <li class="nav-item">
	                        <a class="nav-link active" href="#">전체글</a>
	                      </li>
	                      <li class="nav-item">
	                        <a class="nav-link" href="#">광고</a>
	                      </li>
	                    </ul>
	                    
	                  </div>
	                </div>
	              </nav>
	            </div>
		
		<form class="container d-flex flex-wrap justify-content-end" action="list.do" method="get">
			<select name="sarchType">
				<option value="subject">글제목</option>
				<option value="writer">작성자</option>
			</select>
			<input type="text" name="sarchValue">
			<button class="btn btn-outline-info">검색</button>
		
		</form>
		
		<div id="boardtable">
		<table class="table table-bordered table-light ">
			<thead>
				<tr>
					<th style="text-align:center;">순번</th>
					<th>제목</th>
					<th style="text-align:center;">작성자</th>
					<th style="text-align:center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="vo">
					
					<tr>
						<td style="text-align:center;">${vo.bidx}</td>
						<td><a href="view.do?bidx=${vo.bidx}">${vo.bsubject}</a></td>
						<td style="text-align:center;">${vo.bwriter}</td>
						<td style="text-align:center;">${vo.bwdate}</td>
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
		
		</div>
		<div class="container d-flex flex-wrap justify-content-end">
			<button class="btn btn-outline-info" onclick="location.href='register.do'">등록</button>
		</div>
	</div>

	<%@ include file = "/resources/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>