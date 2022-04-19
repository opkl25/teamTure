<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">


	<!-- 부트스트랩 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<!-- header.css -->
	<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
	
	<!-- jquery -->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- 캘린더 LINK OR CSS  -->
	<link href="<%=request.getContextPath() %>/css/cal.css"  rel="stylesheet" />
	
	<script src='/controller/resources/fullcalendar/lib/main.js'></script>

	<link href='/controller/resources/fullcalendar/lib/main.css' rel='stylesheet' />




	

  
	  <header class="py-3 mb-4 bor	der-bottom">
	  <%@ include file = "/resources/aside.jsp" %>
	    <div class="container d-flex flex-wrap justify-content-center">
	      <a href="/controller" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
	        <span class="fs-4">  	
      				<img src="/controller/img/logow.jpg" alt="로고" id="logo" class="d-inline-block align-text-top">
   			</span>
	      </a>
	      <form class="col-12 col-lg-auto mb-3 mb-lg-0">
	        <input type="search" class="form-control" placeholder="검색..." aria-label="Search">
	      </form>
	    </div>
	    
	    
	  <nav class="py-2 border-bottom navbar navbar-expand-lg navbar-light  ">
	    <div class="container d-flex flex-wrap justify-content-center ">
	    
	    <ul class="navbar-nav mb-2 mb-lg-0">
		      
		 <li class="nav-item dropdown">
		 		  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            지역
		          </a>
		          
				
	      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		    
				            <li><hr class="dropdown-divider">-ㄱ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=1">고창군</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=2">군산시</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=3">김제시</a></li>
				            
				            <li><hr class="dropdown-divider">-ㄴ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=4">남원시</a></li>
				            
				            <li><hr class="dropdown-divider">-ㅁ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=5">무주군</a></li>
				            
				            <li><hr class="dropdown-divider">-ㅂ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=6">부안군</a></li>
				    
				            <li><hr class="dropdown-divider">-ㅅ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=7">순창군</a></li>
				            
				            <li><hr class="dropdown-divider">-ㅇ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=8">완주군</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=9">익산시</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=10">임실군</a></li>
				            
				            <li><hr class="dropdown-divider">-ㅈ-</li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=11">장수군</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=12">전주시</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=13">정읍시</a></li>
				            <li><a class="dropdown-item" href="/controller/location/view.do?lidx=14">진안군</a></li>
				            				            
		          </ul>
		          </li>
		        
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="/controller/tspot/list.do">관광지</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/controller/board/list.do">자유게시판</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#" >QnA</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/controller/mypage/nmypage.do">마이페이지</a>
		        </li>
		        
		        <li class="nav-item">
		        	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      			<span class="navbar-toggler-icon"></span>
		    		</button>
		        </li>
					
				</ul>
				
				
				
				<div class="collapse navbar-collapse flex-wrap justify-content-end" id="navbarSupportedContent">
		      	
    				<a class="navbar-brand" href="/controller">
      					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
						  <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
						</svg>
				    </a>
				    <a class="navbar-brand" href="/controller/login.do">
				    	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
						  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
						  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
				    </a>
				
		    	 </div>
		     
				
		    	
	      </div>
								
				
		  

			
		</nav>
    
	
	</header>
		
