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
	
	
	<form name="frm" action = "modify.do" method="post" enctype="multipart/form-data">
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
				
				
				<th><label for="inputFile" class="col-form-label"><strong>첨부 파일</strong></label></th>
				            
				<td colspan="3">
					
				            <div class="inputArea">
								 <label for="gdsImg">이미지</label>
								 <input type="file" id="gdsImg" name="uploadFile" />
								 <input type="hidden" name="filename" value="${vo.filename}">
								 <div>현재 이미지 : ${vo.filename}</div>
								 <div class="select_img"><img style="width:100%;" src="<%=request.getContextPath()%>/resources/img/upload/${vo.filename}"/></div>
								 
								 <script>
							
								 
								  $("#gdsImg").change(function(){
									
								
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img img").attr("src", data.target.result).width('100%');        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								
								  });
								 </script>
								 
							</div>
							
				 
					
				</td>
				
				

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



</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>