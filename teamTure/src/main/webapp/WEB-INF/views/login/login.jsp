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

	<section>
	
	<div id="logindiv">
	
		<div class="container-fluid">
			<a href="/controller/home1.do" class="navbar-brand">
				<img src="img/logow.jpg" alt="로고이미지"  class="img-fluid">
			</a>
		</div>
		
		
		<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content rounded-5 shadow">
			      <div class="modal-header p-5 pb-4 border-bottom-0">
			        <!-- <h5 class="modal-title">Modal title</h5> -->
			        <h2 class="fw-bold mb-0">로그인</h2>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="location.href='/controller/home1.do'"></button>
			      </div>
			
			      <div class="modal-body p-5 pt-0">
			        <form class="">
			          <div class="form-floating mb-3">
			            <input type="ip" class="form-control rounded-4" id="floatingInput" placeholder="아이디를 입력해 주세요..">
			            <label for="floatingInput">아이디</label>
			          </div>
			          <div class="form-floating mb-3">
			            <input type="password" class="form-control rounded-4" id="floatingPassword" placeholder="비밀번호">
			            <label for="floatingPassword">비밀번호</label>
			          </div>
			          <button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" type="submit">Sign up</button>
			        <small class="text-muted">
			        	<a href="#">아이디 찾기</a>
						<a href="#">비밀번호 찾기</a>
						<a href="member/create.do">회원가입</a>
					</small>
			          <hr class="my-4">
			          <h2 class="fs-5 fw-bold mb-3">간편가입</h2>
			          <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4" type="submit">
			            <svg class="bi me-1" width="16" height="16"><use xlink:href="#twitter"/></svg>
			            Sign up with Twitter
			          </button>
			          <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4" type="submit">
			            <svg class="bi me-1" width="16" height="16"><use xlink:href="#facebook"/></svg>
			            Sign up with Facebook
			          </button>
			          <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-4" type="submit">
			            <svg class="bi me-1" width="16" height="16"><use xlink:href="#github"/></svg>
			            Sign up with GitHub
			          </button>
			        </form>
			      </div>
			    </div>
			  </div>
			</div>
	
	</div>
			
	</section>
	
	<%@ include file = "/resources/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>