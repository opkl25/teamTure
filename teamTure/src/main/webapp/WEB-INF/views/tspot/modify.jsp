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
	<input type="hidden" name="tidx" value="${vo.tidx}">
	<div class="form-group row">
		<table class="table table-bordered table-light ">
			
			<tbody>
									
					<tr>
				
				
				<th><label for="inputFile" class="col-form-label"><strong>첨부 파일</strong></label></th>
				            
				<td style="width:50%;">
				
					
				            <div class="inputArea">
								 <label for="gdsImg">이미지</label>
								 <input type="file" id="gdsImg" name="uploadFile" />
								 <input type="hidden" name="timg" value="${vo.timg }">
								 <div>현재 이미지 : ${vo.timg }</div>
								 <div class="select_img"><img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg}"  style="margin:20px 0; width:100%;"/></div>
								 
								 <script>
								  $("#gdsImg").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img img").attr("src", data.target.result).width("100%").height("100%");        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
								 </script>
								 
							</div>
							
							
							 <div class="inputArea1">
								 <label for="gdsImg1">이미지</label>
								 <input type="file" id="gdsImg1" name="uploadFile1" />
								 <input type="hidden" name="timg1" value="${vo.timg1 }">
								 <div>현재 이미지 : ${vo.timg1 }</div>
								 
								 <div class="select_img1"><img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg1}"  style="margin:20px 0; width:100%;"/></div>
								 
								 <script>
								  $("#gdsImg1").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img1 img").attr("src", data.target.result).width("100%").height("100%");        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
								 </script>
								 
							</div>
							
							
							
							
							 <div class="inputArea2">
								 <label for="gdsImg2">이미지</label>
								 <input type="file" id="gdsImg2" name="uploadFile2" />
								 <input type="hidden" name="timg2" value="${vo.timg2 }">
								 <div>현재 이미지 : ${vo.timg2 }</div>
								 
								 <div class="select_img2"><img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg2}"  style="margin:20px 0; width:100%;"/></div>
								 
								 <script>
								  $("#gdsImg2").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img2 img").attr("src", data.target.result).width("100%").height("100%");        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
								 </script>
								 
							</div>
							
				 	
				 	
					
				</td>
				
				
				<td rowspan="2">
					<div class="container">
							제목
							<input style="width:100%" type="text" name="tsubject" value="${vo.tsubject }">
							
							내용
							<textarea style="width:100%; height:70vh; white-space: pre-wrap;"  name="tcontent" >${vo.tcontent }</textarea>				
					</div>
				
				</td>
			</tr>
			
			<tr>
				<th> 지역 </th>
				<td colspan="1">
				
								<label><input type="radio" name="lidx" value="1">고창군</label>
								<label><input type="radio" name="lidx" value="2">군산시</label>
								<label><input type="radio" name="lidx" value="3">김제시</label>
								<label><input type="radio" name="lidx" value="4">남원시</label>
								<label><input type="radio" name="lidx" value="5">무주군</label>
								<label><input type="radio" name="lidx" value="6">부안군</label>
								<label><input type="radio" name="lidx" value="7">순창군</label>
								<label><input type="radio" name="lidx" value="8">완주군</label>
								<label><input type="radio" name="lidx" value="9">익산시</label>
								<label><input type="radio" name="lidx" value="10">임실군</label>
								<label><input type="radio" name="lidx" value="11">장수군</label>
								<label><input type="radio" name="lidx" value="12">전주시</label>
								<label><input type="radio" name="lidx" value="13">정읍시</label>
								<label><input type="radio" name="lidx" value="14">진안군</label>
								<label><input type="radio" name="lidx" value="15">기타</label>	
								
														
								<input type="hidden" name="lidx" value="${vo.lidx}"	>	
								
				</td>
			</tr>
			
			</tbody>
		</table>
		
	</div>
	</form>
	<div class="container d-flex flex-wrap justify-content-end">
			<button class="btn btn-outline-info " onclick="location.href='view.do?tidx=${vo.tidx}'">취소</button>
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