<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
</head>
<body>
	
	<%@ include file = "/resources/header.jsp" %>
	
	<div class="container">
	
	
	<form name="frm" action = "modify.do" method="post">
	<input type="hidden" name="bidx" value="${vo.bidx}">
	<div class="form-group row">
		<table class="table table-bordered table-light ">
			
			<tbody>
									
					<tr>
						<th>순번</th>
						<td>${vo.bidx}</td>
						<th>작성자</th>
						<td>${vo.bwriter}</td>
						
					</tr>
					
					<tr>
						<th>제목</th>
						<td><div><input style="width:100%" type="text" name="bsubject" value="${vo.bsubject}"></div></td>
						<th>작성일</th>
						<td>${vo.bwdate}</td>
					</tr>
					
					<tr>
						<th>내용</th>
						<td colspan="3"><input style="width:100%; height:70vh" type="text" name="bcontent" value="${vo.bcontent}"></td>
					</tr>
					
					
					<tr>
						<div class="form-group row">
				            <label for="inputFile" class="col-sm-2 col-form-label"><strong>첨부 파일</strong></label>
				            <div class="col-sm-10">
				                <div class="custom-file" id="inputFile">
				                    <input name="file" type="file" class="custom-file-input" id="customFile">
				                    <label class="custom-file-label" for="customFile">파일을 선택해 주세요.</label>
				                </div>
				            </div>
				        </div>
						
					</tr>
			
			</tbody>
		</table>
		
	</div>
	</form>
	<div class="container d-flex flex-wrap justify-content-end">
			<button class="btn btn-outline-info " onclick="location.href='view.do?bidx=${vo.bidx}'">취소</button>
			<button class="btn btn-outline-info " onclick="save()">저장</button>
	</div>
</div>

<%@ include file = "/resources/footer.jsp" %>

<script>
function save(){
	document.frm.submit();
}


$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>