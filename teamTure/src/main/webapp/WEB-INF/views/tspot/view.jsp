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
	
	<div class="container d-flex flex-wrap justify-content-center">
	
	 <div class="container bg-light">
	  
		<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
			  <div class="carousel-indicators">
			  
			  <c:choose>
			  	<c:when test="${vo.timg ne '빈 이미지 파일입니다.png' }">
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			  	</c:when>
			  	
			  	<c:otherwise>
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" aria-label="Slide 1"></button>
			  	</c:otherwise>
			  	
			  </c:choose>
			  
			  <c:choose>
			  	<c:when test="${vo.timg1 ne '빈 이미지 파일입니다.png' && vo.timg eq '빈 이미지 파일입니다.png' }">
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" class="active" aria-current="true" aria-label="Slide 2"></button>
			  	</c:when>
			  	
			  	<c:when test="${vo.timg1 ne '빈 이미지 파일입니다.png' }">
			  		  	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			  	</c:when>
			  	
			  	
			  	
			  </c:choose>
			  
			  <c:choose>
			  	<c:when test="${vo.timg2 ne '빈 이미지 파일입니다.png' && vo.timg eq '빈 이미지 파일입니다.png' && vo.timg1 eq '빈 이미지 파일입니다.png'}">
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" class="active" aria-current="true" aria-label="Slide 3"></button>
			  	</c:when>
			  	
			  	<c:when test="${vo.timg1 eq '빈 이미지 파일입니다.png' && vo.timg2 ne '빈 이미지 파일입니다.png' }">
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			  	</c:when>
			  
			  	<c:when test="${vo.timg2 ne '빈 이미지 파일입니다.png' }">
			  			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  	</c:when>
			  				  
			  </c:choose> 
			    
			    
			  </div>
			  <div class="carousel-inner">
			  <c:choose>
			  
			  
				  <c:when test="${vo.timg ne '빈 이미지 파일입니다.png' }">
				    <div class="carousel-item active" data-bs-interval="10000">
				      <img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg}" class="d-block w-100 viewImg" alt="${vo.timg}" style="height: 60vh;">
				      <div class="carousel-caption d-none d-md-block">
				        <h5>${vo.timg}</h5>
				        <p>${vo.region}</p>
				      </div>
				    </div>
				   </c:when>
				
			   
			   </c:choose>
			   
			   <c:choose>
			  
					  
					  <c:when test="${vo.timg1 ne '빈 이미지 파일입니다.png' && vo.timg eq '빈 이미지 파일입니다.png' }">
					    <div class="carousel-item active" data-bs-interval="10000">
					      <img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg1}" class="d-block w-100 viewImg" alt="${vo.timg1}" style="height: 60vh;">
					      <div class="carousel-caption d-none d-md-block">
					        <h5>${vo.timg1}</h5>
					        <p>${vo.region}</p>
					      </div>
					    </div>
					   </c:when>
					   
					   <c:when test="${vo.timg1 ne '빈 이미지 파일입니다.png' }">
						   <div class="carousel-item " data-bs-interval="10000">
						      <img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg1}" class="d-block w-100 viewImg" alt="${vo.timg1}" style="height: 60vh;">
						      <div class="carousel-caption d-none d-md-block">
						        <h5>${vo.timg1}</h5>
						        <p>${vo.region}</p>
						      </div>
					    </div>
					   
					   </c:when>
					   			   
			   
			   </c:choose>
			   
			   <c:choose>
			  
					  
					 <c:when test="${vo.timg2 ne '빈 이미지 파일입니다.png' && vo.timg1 eq '빈 이미지 파일입니다.png' && vo.timg eq '빈 이미지 파일입니다.png' }">
					    <div class="carousel-item active" data-bs-interval="10000">
					      <img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg2}" class="d-block w-100 viewImg" alt="${vo.timg2}" style="height: 60vh;">
					      <div class="carousel-caption d-none d-md-block">
					        <h5>${vo.timg2}</h5>
					        <p>${vo.region}</p>
					      </div>
					    </div>
					   </c:when>
					   
					   <c:when test="${vo.timg2 ne '빈 이미지 파일입니다.png'}">
					    <div class="carousel-item " data-bs-interval="10000">
					      <img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg2}" class="d-block w-100 viewImg" alt="${vo.timg2}" style="height: 60vh;">
					      <div class="carousel-caption d-none d-md-block">
					        <h5>${vo.timg2}</h5>
					        <p>${vo.region}</p>
					      </div>
					    </div>
					   </c:when>					   
			   
			   
			   </c:choose>
			   
			    
			  </div>
			  
			  
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
			</div>
			
	
		</div>
		
	
	
	<div id="boardtable" class="container col" style="height:100%;">
		<table class="table table-bordered table-light table-responsive " id="viewTable">
			
			<tbody>
					
					<tr>
						
						<th id="viewTh">${vo.tsubject} </th>
					</tr>
					
					<tr>
						<td id="viewTd"><textarea style="width:100%; height:70vh; white-space: pre-wrap; border:none; outline:none; resize: none;"  name="tcontent" readonly >${vo.tcontent }</textarea></td>
					</tr>
					
			</tbody>
		</table>
		
		</div>
		<div id="listbutton" class="container d-flex flex-wrap">
			
				<button class="btn btn-outline-info me-auto" onclick="location.href='/controller'">홈으로</button>
			
				<button class="btn btn-outline-info" onclick="deleteO()">삭제</button>
				<form name="frm" action="delete.do" method="post">
					<input type="hidden" name="tidx" value="${vo.tidx }">
				</form>
				
				<button class="btn btn-outline-info" onclick="location.href='modify.do?tidx=${vo.tidx}'">수정</button>
				
				
		</div>
		
		<div class="container ">
			<div class="row row-cols-1 row-cols-md-4 justify-content-center">
		    
		    <c:forEach items="${alist }" var="ao" begin="0" end="3"> 
				<div class="col card " >
				  	<a href="view.do?tidx=${ao.tidx }">
				  		<c:choose>
				  		
				  			<c:when test="${ao.timg ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${ao.timg}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${ao.timg}" >
					  		</c:when>
					  		
					  		<c:when test="${ao.timg1 ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${ao.timg1}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${ao.timg1}" >
					  		</c:when>
					  		
					  		<c:when test="${ao.timg2 ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${ao.timg2}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${ao.timg2}" >
					  		</c:when>
					  		
					  		<c:otherwise>
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/빈 이미지 파일입니다.png"  class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="빈 이미지 파일입니다." >
					  		</c:otherwise>
					  		
						</c:choose>
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">${ao.tsubject}</h5>
				    <c:choose>
					  <c:when test="${fn:length(ao.tcontent) gt 20}">
					    <p class="card-text"><c:out value="${fn:substring(ao.tcontent,0,20)}" />...</p>
					  </c:when>
					  <c:otherwise>
					  	<c:out value="${ao.tcontent}" />
					  </c:otherwise>
					</c:choose>
				    
				  </div>
				</div>
		    </c:forEach>
		    		    	
		    
		   </div>
		
		</div>
		
		</div>
		
		<div class="container " style ="border :1px solid lightgray;">
		<form action="trinsert.do" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="tidx" value="${vo.tidx }">
			<input type="hidden" name="lidx" value="${vo.lidx }">
			<input type="hidden" name="midx" value="${member.midx }">
			<input type="hidden" name="trwriter" value="테스터">
			

		<div class="container d-flex flex-wrap ">
		
			
					
			
					<div class="inputArea">
								 <label for="gdsImg" >이미지 첨부</label>
								 <input type="file" id="gdsImg" name="uploadFile" style="display:none;"/>
								 <input type="hidden" name="img" value="">
								 <div class="select_img container"><img src=""  style="margin:20px 0; width:100%;"/></div>
								 
								 <script>
								  $("#gdsImg").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img img").attr("src", data.target.result).width("100%").height("100%");        
								    }
								    reader.readAsDataURL(this.files[0]);
								    
																
								   }
								   $("input[name='uploadFile']").css('display','block');
								  });
								 </script>
								 
							</div>
			
			<div class="container">
				<textarea class="col-auto form-control" id="reviewContents"
						  placeholder="리뷰 댓글" name="trcontent"></textarea>
			</div>
		</div>	
		</form>		
		<div class="d-flex flex-wrap container justify-content-end mb-2">
				<button type="submit" class="btn btn-outline-info" onclick="reply()" >저장</button>
				
		</div>
					
		
		<div id="boardtable" class="col table-responsive">
		<table class="table table-bordered table-light align-middle ">
			
			<tbody>
					<c:forEach items="${list }" var="lo">
					<c:choose>
						
						<c:when test="${vo.tidx eq lo.tidx }">
						<tr>
						
							<th style="width:20%">${lo.trwriter } <small>(${lo.trwdate})</small></th>
						
							
							<c:choose>
									<c:when test="${lo.img != ''}">
											
											<td ><p >${lo.trcontent }</p> </td>
									
											<td style="width:20%"><img src="<%=request.getContextPath()%>/resources/img/upload/${lo.img}"  style="margin:20px 0; width:100%;" id="reimg" onclick="modalImg(this)"/></td>
											<div class="modal">
												  <span class="close">&times;</span>
												  <img class="modal_content">
											</div>
											
									</c:when>
									
									<c:otherwise>
									
											<td colspan="2"><p >${lo.trcontent }</p> </td>
										
									</c:otherwise>
							</c:choose>
							
							
							
						</tr>
									
						
						
						
						</c:when>
							
						
					</c:choose>
					
						
					
					</c:forEach>
					
			</tbody>
		</table>
		
		
		</div>
		
		</div>
		
		<div id="list"></div>
		
	
	
	

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	const modal = document.querySelector(".modal");
	const img = document.querySelector("#reimg");
	const modal_img = document.querySelector(".modal_content");
	const span = document.querySelector(".close");

	function modalImg(obj){
		modalDisplay("block");
		
		var imgC = obj.src;
		
		modal_img.src = imgC;	
		
		
	}
	span.addEventListener('click', ()=>{
	  modalDisplay("none");
	});
	modal.addEventListener('click', ()=>{
	  modalDisplay("none");
	});
	function modalDisplay(text){
	  modal.style.display = text;
	}
	
	
	
	function reply(){
		document.myform.submit();
	}
	
	$(document).ready(function(){
		getComment();
		
	});
	
	function getComment(){
		
		 var tidx = $("input[name='tidx']").val()

		 console.log(tidx);
		 
		 
		/*
		$.ajax({
			url: "view.do?tidx="+tidx,
			type: "get",
			success: function(data){
				var json = JSON.parse(data.trim()); //trim 앞뒤 공백 제거
				console.log(json);
				var html = "";
				html += "<table border='1' id= 'test'>";
				html += "<thead>";
				html += "<tr>";
				html += "<th>글번호</th><th>제목</th><th>작성자</th>"
				html += "</tr>";
				html += "</thead>";
				html += "<tbody>";
				for(var i=0; i<json.length; i++){
					html += "<tr>";
					html += "<td>"+json[i].tridx+"</td>";
					html += "<td>"+json[i].trcontent+"</td>";
					html += "<td>"+json[i].trwriter+"</td>";
					html += "<td><button onclick='modify("+json[i].tridx+",this)'>수정</button>"
							+"<button onclick='deleteFn("+json[i].tridx+",this)'>삭제</button></td>";
					html += "</tr>";
				}
				html += "</tbody>";
				html += "</table>";
				
				$("#list").html(html);
			}
		}); */
		
		
	
		
	}
	
	
	
	

	</script>
	
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>