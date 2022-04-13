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
		
	
	
	<div id="boardtable" class="container col" >
		<table class="table table-bordered table-light table-responsive " id="viewTable">
			
			<tbody>
					
					<tr>
						
						<th id="viewTh">${vo.tsubject} </th>
					</tr>
					
					<tr>
						<td id="viewTd">${vo.tcontent}</td>
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
		    
				<div class="card h-100 col" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    
		    
		    	<div class="card col" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    
		    <div class="card col" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    
		    <div class="card col" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    
		   </div>
		
		</div>
		
		</div>
		
		<div class="container " style ="border :1px solid lightgray;">
		<form action="trinsert.do" class="mb-3" name="myform" id="myform" method="post" >
			<input type="hidden" name="tidx" value="${vo.tidx }">
			<div class="container d-flex flex-wrap ">
			<fieldset class="me-auto">
						
				<span class="text-bold">별점</span>
				<input type="radio" name="reviewStar" value="5" id="rate1"><label
					for="rate1">★</label>
				<input type="radio" name="reviewStar" value="4" id="rate2"><label
					for="rate2">★</label>
				<input type="radio" name="reviewStar" value="3" id="rate3"><label
					for="rate3">★</label>
				<input type="radio" name="reviewStar" value="2" id="rate4"><label
					for="rate4">★</label>
				<input type="radio" name="reviewStar" value="1" id="rate5"><label
					for="rate5">★</label>
												
			</fieldset>
			
			</div>				
			
			<div>
				<textarea class="col-auto form-control" type="text" id="reviewContents"
						  placeholder="리뷰 댓글" name="trcontent"></textarea>
			</div>
		</form>		
		<div class="d-flex flex-wrap container justify-content-end mb-2">
				<button type="submit" class="btn btn-outline-info" onclick="reply()" >저장</button>
				
				</div>			
		
		<div id="boardtable" class="col table-responsive">
		<table class="table table-bordered table-light align-middle ">
			
			<tbody>
					<c:forEach items="${list }" var="lo">
					<tr>
						
						<th>작성자</th>
						<td>${lo.trwriter } </td>
						
					</tr>
					
					<tr>
						<th>내용</th>
						<td ><p >${lo.trcontent }</p> </td>
					</tr>
					</c:forEach>
					
			</tbody>
		</table>
		
		
		</div>
		
		</div>
		
	<div class="container">
		    <form id="commentForm" name="commentForm" method="post">
		    <br><br>
		        <div>
		            <div>
		                <span><strong>Comments</strong></span> <span id="cCnt"></span>
		            </div>
		            <div>
		                <table class="table">                    
		                    <tr>
		                        <td>
		                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
		                            <br>
		                            <div>
		                                <a href='#' onClick="fn_comment('${result.code }')" class="btn pull-right btn-success">등록</a>
		                            </div>
		                        </td>
		                    </tr>
		                </table>
		            </div>
		        </div>
		        <input type="hidden" id="b_code" name="b_code" value="${result.code }" />        
		    </form>
		</div>
		<div class="container">
		    <form id="commentListForm" name="commentListForm" method="post">
		        <div id="commentList">
		        </div>
		    </form>
		</div>
	
	

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	function reply(){
		document.myform.submit();
	}
	
	
	
	
	
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>