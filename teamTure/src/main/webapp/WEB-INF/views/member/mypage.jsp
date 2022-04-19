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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Hello, world!</title>
  </head>
<body>
<%@ include file = "/resources/header.jsp" %>
  
  			<div class="container">
   				<table class="table" id="table">
                     <tr>
                       <th style="height: 37px; width:120px;">My Profile</th>
                       <td></td>
                     </tr>
                     <tr>
                     <c:if test="${member != null}">
                    	
                     <div class="inputArea">
                     <form action="upload.do" method="post" name="myform" enctype="multipart/form-data"  >
                         <label for="mimg" >이미지 첨부</label>
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
                         <button type="button" class="btn btn-outline-info" onclick="reply()" >저장</button>
                     </div>
                       <th style="width:120px;"><div class="imgwrap"><img class="profile-img" src="<%=request.getContextPath()%>/resources/img/upload/${vo.mimg}"></div></th>
                       <td>${member.mid}<small>&nbsp;&nbsp;${member.mname}</small></td>
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
		                          <th class="table-success" style="width: 120px;">My Info</th>
		                          <th class="table-success prosummary"></th>
		                        </tr>
		                      </thead>
		                      <tr>
		                        <th style="width: 120px;">아이디</th>
		                        
		                        <td>내용${member.mid}</td>
		                         
		                      </tr>
		                      <tr>
		                        <th>이름</th>
		                        <td>내용${member.mname}</td>
		                      </tr>
		                      <tr>
		                        <th>닉네임</th>
		                        <c:choose>
				                        <c:when test="${member.mnic ne '닉네임을 설정해주세요' }">
				                        <td>내용 ${member.mnic}</td>   <!-- 닉네임을 등록한사람 -->
				                        </c:when>
				                        
				                        <c:when test="${member.mnic eq '닉네임을 설정해주세요' }">
				                        <td> 닉네임을 설정해주세요 </td>  <!-- 닉네임을 등록안한사람 -->
				                        </c:when>
		                        </c:choose>
		                      </tr>
		                      <tr>
		                        <th>주소</th>
		                        <td>내용${member.maddr}</td>
		                      </tr>
		                      <tr>
		                        <th>연락처</th>
		                        <td>내용${member.mphone}</td>
		                      </tr>
		                      <tr>
		                        <th>성별</th>
		                        <td>내용${member.mgender}</td>
		                      </tr>
		                      <tr>
		                        <th>이메일</th>
		                        <td>내용${member.memail}</td>
		                      </tr>
		                    </table>
		                   
		                    </c:if>
		                   </div>
		                   <div class="col">
		                    <table class="table table-defualt table-borderless table align-middle" id="table">
		                      <tr>
		                        <th class="table-success" style="height: 37px; width: 120px;">My Activity</th>
		                        <td class="table-success prosummary"></td>
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
        
			<script>
				function reply(){
					document.myform.submit();
				}
				
				
				
				
				
				</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>