<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
</head>
<body>
	
	<%@ include file = "/resources/header.jsp" %>
	
	<div class="container">
	
	
	<div id="boardtable" style="margin:0px;">
		<table class="table table-bordered table-light " >
			
			<tbody>
									
					<tr>
						<th>순번</th>
						<td>${vo.bidx}</td>
						<th>작성자</th>
						<td>${vo.bwriter}</td>
					</tr>
					
					
					
					<tr>
						<th>제목</th>
						<td><p style="width:100%">${vo.bsubject}</p></td>
						<th>작성일</th>
						<td>${vo.bwdate}</td>
						
					</tr>
					
					<tr>
						<th>내용</th>
						<td colspan="3"><p style="width:100%; height:70vh">${vo.bcontent}</p></td>
					</tr>
					
					<tr>
						<th><label for="inputFile" class="col-form-label"><strong>첨부 파일</strong></label></th>
				            
						<td colspan="3">
						
							<img style="width:100%;" src="<%=request.getContextPath()%>/resources/img/upload/${vo.filename}">
							
						
						
						</td>
						
						
					</tr>
					
			</tbody>
		</table>
		
		</div>
		<div id="listbutton" class="container d-flex flex-wrap justify-content-end">
			
				<button class="btn btn-outline-info me-auto" onclick="location.href='list.do'">목록으로</button>
			
				<button class="btn btn-outline-info" onclick="location.href='modify.do?bidx=${vo.bidx}'">수정</button>
				<button class="btn btn-outline-info" onclick="del()">삭제</button>
				<form name="frm" action="delete.do" method="post">
					<input type="hidden" name="bidx" value="${vo.bidx}">
				</form> 
		</div>
	</div>

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	function del(){
		document.frm.submit();
	}
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>