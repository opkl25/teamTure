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
			    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active" data-bs-interval="10000">
			      <img src="https://www.gunsan.go.kr/upload_data/board_data/BBS_0000231/151263622705588.gif" class="d-block w-100 viewImg" alt="..." >
			      <div class="carousel-caption d-none d-md-block">
			        <h5>은파 호수 공원</h5>
			        <p>군산</p>
			      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="10000">
			      <img src="https://www.gunsan.go.kr/upload_data/board_data/BBS_0000231/151263622710923.gif" class="d-block w-100 viewImg" alt="..." >
			      <div class="carousel-caption d-none d-md-block">
			        <h5>새만금 방조제</h5>
			        <p>군산</p>
			      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="10000">
			      <img src="https://www.gunsan.go.kr/upload_data/board_data/BBS_0000231/154503634401788.jpg" class="d-block w-100 viewImg" alt="..." >
			      <div class="carousel-caption d-none d-md-block">
			        <h5>경암동 철길 마을</h5>
			        <p>군산</p>
			      </div>
			    </div>
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
		
	
	
	<div id="boardtable" class="container col" style="height:30vh;">
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
			
				<button class="btn btn-outline-info" onclick="location.href='modify.do?lidx=${vo.lidx}'">수정</button>
				
				
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
		<form action="#" class="mb-3" name="myform" id="myform" method="post" >
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
						  placeholder="리뷰 댓글"></textarea>
			</div>
		</form>		
		<div class="d-flex flex-wrap container justify-content-end mb-2">
				<button type="submit" class="btn btn-outline-info" onclick="location.href='#'" >저장</button>
				
				</div>			
		
		<div id="boardtable" class="col table-responsive">
		<table class="table table-bordered table-light align-middle ">
			
			<tbody>
					
					<tr>
						
						<th>작성자</th>
						<td> </td>
						
					</tr>
					
					<tr>
						<th>내용</th>
						<td ><p ></p> </td>
					</tr>
					
			</tbody>
		</table>
		
		
		</div>
		
	</div>
	
	

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	
	
	
	
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>