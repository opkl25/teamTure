<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    





	

  
	  <header class="py-3 mb-4 bor	der-bottom">
	  <%@ include file = "/resources/aside.jsp" %>
	    <div class="container d-flex flex-wrap justify-content-center">
	      <a href="/controller" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
	        <svg class="bi me-2" width="40" height="32"></svg>
	        <span class="fs-4">  	
      				<img src="/controller/img/logow.jpg" alt="로고" id="logo" class="d-inline-block align-text-top">
   			</span>
	      </a>
	      <form class="col-12 col-lg-auto mb-3 mb-lg-0">
	        <input type="search" class="form-control" placeholder="검색..." aria-label="Search">
	      </form>
	    </div>
	    
	    
	  <nav class="py-2 bg-light border-bottom navbar navbar-expand-lg navbar-light bg-light ">
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
      					<img src="/controller/img/home.jpg" alt="" width="30" height="24">
				    </a>
				    <a class="navbar-brand" href="/controller/login.do">
				    	<img src="/controller/img/login.jpg" alt="" width="30" height="24">
				    </a>
				
		     </div>
		     
				
		    	
	      </div>
								
				
		  

			
		</nav>
    
	
	</header>
		
