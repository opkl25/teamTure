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
			<a href="/controller" class="navbar-brand">
				<img src="/controller/img/logow.jpg" alt="로고이미지"  class="img-fluid"/>
			</a>
		</div>
		
		
		<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
		<form action = "createOk.jsp" method="post" id="frm">
			<div class="modal-dialog" role="document">
			    <div class="modal-content rounded-5 shadow">
			      <div class="modal-header p-5 pb-4 border-bottom-0">
			      <h2 class="fw-bold mb-0">회원가입</h2>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="location.href='/controller/login.do'"></button>
			      </div>
			
			      <div class="modal-body p-5 pt-0">
			        
			          <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4 dropdown " id="floatingInput" placeholder="아이디를 입력해 주세요..">
			            <label for="floatingInput">아이디</label>
			            
			            <input type="button" class="btn btn-outline-success" value="중복확인" onclick="idCheck(this)">
			          </div>
			          <div class="form-floating mb-3">
			            <input type="password" class="form-control rounded-4"  placeholder="비밀번호">
			            <label for="floatingPassword">비밀번호</label>
			           </div>
			           
			           <div class="form-floating mb-3">
			            <input type="password" class="form-control rounded-4"  placeholder="비밀번호 확인">
			            <label for="floatingPassword">비밀번호 확인</label>
			          </div>
			           
			            <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4" id="floatingInput">
			            <label for="floatingInput">닉네임</label>
			            
			            <input type="button" class="btn btn-outline-success" value="중복확인" onclick="idCheck(this)">
			          </div>
			          <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4" >
			            <label for="floatingInput">이름</label>
			          </div>
			          
			          <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4" >
			            <label for="floatingInput">연락처</label>
			          </div>
				      
				      <div class="form-floating">
				      		<input class="rounded-4 btn btn-outline-success" type="button"  onclick="sample6_execDaumPostcode()" value="주소 찾기">
				            <input class="form-control rounded-4" type="text" id="sample6_postcode" >
				            <label style="top: 35px;" for="sample6_postcode">우편번호</label>
				      </div>
				    
					  <div class="form-floating">
							<input class="form-control rounded-4" type="text" id="sample6_address">
							<label for="floatingInput">주소</label>
					  </div>
					
					  <div class="form-floating">		
							<input class="form-control rounded-4" type="text" id="sample6_detailAddress" >
							<label for="floatingInput">상세주소</label>
					  </div>
					  
					  <div class="form-floating mb-3">	
							<input class="form-control rounded-4" type="text" id="sample6_extraAddress" >
							<label for="floatingInput">참고항목</label>
			          </div>
			          
			          <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4" id="floatingPassword" placeholder="비밀번호">
			            <label for="floatingInput">생년월일</label>
			          </div>
			          
			          <div class="form-floating mb-3">
			            <input type="text" class="form-control rounded-4" id="floatingPassword" placeholder="비밀번호">
			            <label for="floatingInput">이메일</label>
			          </div>
			          
			          
			          <div class="form-floating mb-3">
			          	<label style="top: -15px;">성별</label>
			          <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
			              
						  <input type="radio" class="btn-check me-auto" name="gender" id="btnradio1" autocomplete="off" value="M" checked="">
						  <label class="btn btn-outline-success" for="btnradio1">남자</label>
						  <input type="radio" class="btn-check" name="gender" id="btnradio2" autocomplete="off" value="W" checked="">
						  <label class="btn btn-outline-success" for="btnradio2">여자</label>
					  
					</div>
					</div>
				
		
					<div class="d-grid gap-2 col-6 mx-auto">
	  		
	  			<button class="btn btn-primary" type="submit">회원가입</button>
	  		
				</div>
			
			</div>
			</div>
			</div>
		
		</form>
		
		
		</div>
	
	</div>
			
	</section>
	
	<%@ include file = "/resources/footer.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
			    function sample6_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var addr = ''; // 주소 변수
			                var extraAddr = ''; // 참고항목 변수
			
			                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                    addr = data.roadAddress;
			                } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                    addr = data.jibunAddress;
			                }
			
			                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			                if(data.userSelectedType === 'R'){
			                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 건물명이 있고, 공동주택일 경우 추가한다.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 조합된 참고항목을 해당 필드에 넣는다.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // 커서를 상세주소 필드로 이동한다.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
			</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>