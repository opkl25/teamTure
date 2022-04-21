<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="ko">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
	<link href="<%=request.getContextPath() %>/css/mypage.css"  rel="stylesheet" />
       <title>Hello, world!</title>
  </head>
<body>

<%@ include file = "/resources/header.jsp" %>
  <script type="text/javascript">
  $(document).ready(function(){
		
		$("#memberDeleteBtn").on("click", function(){
			location.href="/controller/member/memberDeleteView.do";
		})
		
	})
	
  </script>
  <script>
  	function sessionCheck(){
  		var sessionMid = '';
  		$.ajax({
  			type:'POST',
  			datatype:'json',
  			url:'memberSessionCheck',
  			async:false,
  			success:function(result){
  				seesionMid = resutl;
  			},
  			error:function(xhr,status,error){
  				alert('ajax error');
  			}
  		});
  		if(sessionMid == ''){
  			var reLogin = confirm('확인시 로그인 창으로 이동됩니다');
  			if(reLogin){
  				location.href = 'member/login.do';
  				return;
  			}
  		}else{
  			return;
  		}
  	}
  </script>
  			<div class="container">
   				<table class="table" id="table">
                     <tr>
                       <th style="height: 37px; width:120px;">My Profile</th>
                       <td></td>
                     </tr>
                     <tr>
                     <c:if test="${member != null}">
                    	 <th style="width:120px;"><div class="imgwrap"><img class="profile-img" src="<%=request.getContextPath()%>/resources/img/upload/${vo.mimg}"></div></th>
                       <td>
                      		${member.mid}<small>&nbsp;&nbsp;${member.mname}</small>
                      		<label for="mimg" class="changeImg" id="changeBtn" >프로필사진변경</label>
                       		<div class="inputArea" id="iInput">
                     	<form action="upload.do" method="post" name="myform" enctype="multipart/form-data"  >
                         
                         <input type="file" id="mimg" name="uploadFile" style="display:none;"/>
                         <input type="hidden" name="mimg" value="${member.mimg}">
                         <div>현재 이미지 : ${vo.mimg}</div>
                         <div class="select_img container"><img src="<%=request.getContextPath()%>/resources/img/upload/${member.mimg}"  style="margin:20px 0; width:10%;"/></div>
                         <input type="hidden" name="midx" value="${member.midx}">
                         <script>
                          $("#mimg").change(function(){
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
                         </form>
                       
                     </div>
                       <button type="button" class="btn btn-outline-info" id="imgsaveBtn" onclick="reply()" >저장</button>
                       </td>
                     
                    </c:if>
                     </tr>
                     
                 </table>
                 	
      				<div class="container">
                		<div class="row">
                			<div class="col">
		                    <c:if test="${member != null}">
		                    
		                    <table class="table table-defualt table-borderless table align-middle">
		                      <thead>
		                        <tr>
		                          <th class=table-info style="width: 120px;">My Info</th>
		                          <th class="table-info prosummary"></th>
		                        </tr>
		                      </thead>
		                      <tr>
		                        <th style="width: 120px;">아이디</th>
		                        
		                        <td>${member.mid}</td>
		                         
		                      </tr>
		                      <tr>
		                        <th>이름</th>
		                        <td>${member.mname}</td>
		                      </tr>
		                      <tr>
		                        <th>닉네임</th>
		                        <c:choose>
				                        <c:when test="${member.mnic ne '닉네임을 설정해주세요' }">
				                        <td> ${vo.mnic}</td>   <!-- 닉네임을 등록한사람 -->
				                        </c:when>
				                        
				                        <c:when test="${vo.mnic eq '닉네임을 설정해주세요' }">
				                        <td> 닉네임을 설정해주세요 </td>  <!-- 닉네임을 등록안한사람 -->
				                        </c:when>
		                        </c:choose>
		                      </tr>
		                      <tr>
		                        <th>주소</th>
		                        <td>${vo.maddr}</td>
		                      </tr>
		                      <tr>
		                        <th>연락처</th>
		                        <td>${vo.mphone}</td>
		                      </tr>
		                      <tr>
		                        <th>이메일</th>
		                        <td>${vo.memail}</td>
		                      </tr>
		                    </table>
		                   
		                    </c:if>
		                   </div>
		                   <div class="col">
		                    <table class="table table-defualt table-borderless table align-middle" id="table">
		                      <tr>
		                        <th class="table-info" style="height: 37px; width: 120px;">My Activity</th>
		                        <td class="table-info prosummary"></td>
		                      </tr>
		                      <tr>
		                        <th>작성글</th>
		                        <td>내용</td>
		                      </tr>
		                    </table>
		                    
		                    </div>
                	</div>
                </div> 
          	</div>
      <div class="container">     	
        <div class="memberBtn">
        	<button id="memberUpdateBtn" class="btn btn-outline-info btn-lg"type="button">회원정보수정</button>
        	<button id="memberDeleteBtn" class="btn btn-outline-info btn-lg" type="button">회원탈퇴</button>
        </div>
      </div>  
			<script>
				function reply(){
					document.myform.submit();
				}
					
				</script>
				
	<script>
	$(document).ready(function(){
		
		$("#memberUpdateBtn").on("click", function(){
			location.href="/controller/member/updateMember.do";
		})
		
	})
	
	
</script>
<script>
$(document).ready(function(){
$("#changeBtn").click(function(){
	$("#imgsaveBtn").css("display", "block");
})
})
</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>