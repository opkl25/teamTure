<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
</head>
<body>

	<%@ include file = "/resources/header.jsp" %>
	
	
	<nav class="navbar navbar-light bg-white">
	  <div class="container">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	  </div>
	</nav>
	<div class="collapse" id="navbarToggleExternalContent">
	  <div class="container bg-white p-4">
	    
	    <div class="list-group d-flex align-content-start flex-wrap flex-row bd-highlight mb-3">
	    	<div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>고창군</strong>
			      <!-- <small class="d-block text-muted">
			        <svg class="bi me-1" width="1em" height="1em"><use xlink:href="#calendar-event"/></svg>
			        1:00–2:00pm
			      </small> -->
			    </span>
			  </label>
			 </div>
			 <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>군산시</strong>
			    </span>
			  </label>
			 </div>
			 <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>남원시</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>무주군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>부안군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>순창군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>완주군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>장수군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>전주시</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>정읍시</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>진안군</strong>
			    </span>
			  </label>
			  </div>
			  
			  <div class="g-col-1 p-2">
			  <label class="list-group-item d-flex gap-3">
			    <input class="form-check-input flex-shrink-0" type="checkbox" value=""  style="font-size: 1.375em;">
			    <span class="pt-1 form-checked-content">
			      <strong>타 지역</strong>
			    </span>
			  </label>
			  </div>
			  			  
		</div>
	    
	  </div>
	</div>
	
	<hr>
	
	 <div id="add" class="container ">
		  <div class="row row-cols-1 row-cols-md-4 justify-content-center ">
		    	
		    	<c:forEach items="${list }" var="vo">
				  <div class="col card " >
				  	<a href="view.do?tidx=${vo.tidx }">
				  		<c:choose>
				  		
				  			<c:when test="${vo.timg ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${vo.timg}" >
					  		</c:when>
					  		
					  		<c:when test="${vo.timg1 ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg1}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${vo.timg1}" >
					  		</c:when>
					  		
					  		<c:when test="${vo.timg2 ne '빈 이미지 파일입니다.png' }">
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/${vo.timg2}" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="${vo.timg2}" >
					  		</c:when>
					  		
					  		<c:otherwise>
					  			<img src="<%=request.getContextPath()%>/resources/img/upload/빈 이미지 파일입니다.png"  class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="빈 이미지 파일입니다." >
					  		</c:otherwise>
					  		
						</c:choose>
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">${vo.tsubject}</h5>
				    <p class="card-text">${vo.tcontent}</p>
				    
				  </div>
				</div>
				
				</c:forEach>
		    
		    
				<div class="col card " >
				  	<a href="#" >
				  		<img src="/controller/img/gunsan/청암산 죽향길.jpg" class="card-img-top img-thumbnail img-fluid listimg " alt="청암산 죽향길" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">지역-위치</h5>
				    <p class="card-text">소개글입니다.</p>
				    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
					</svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
  					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>
				    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
					  <path d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z"/>
					</svg>
					
				  </div>
				</div>
		    
		    
		    
				
			
			
		  </div>
		  <div class="container">
				<button class="btn btn-outline-info tin" onclick="location.href='insert.do'">등록</button>
		    </div>
		  
		</div>
		
		
		
		

		<%@ include file = "/resources/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>