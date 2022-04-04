<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
   <div class="container px-4">
   <div class="row gx-5">
   <div class="container-sm prowrap">
    <div class="navi" role="banner">
        <div class="gnb_area">
          <a href="/controller"><img src="/controller/img/logo2.png" class="img-fluid"></a>
          <p class="tous">Tous</p>
        </div>
        <div class="profile_inner">
          <div class="proimg"></div>
          <div class="proinfo">
            <p><strong>닉네임 영역</strong></p>
            <p><small>&nbsp;아이디 영역</small></p>
          </div>
        </div>
    </div>
    <div class="container">
   
      
                <div class="twrap">
                  <div class=" content">
                    <table class="table table-defualt table-borderless table align-middle">
                      <thead>
                        <tr>
                          <th class="table-success">내프로필</th>
                          <th class="table-success prosummary"></th>
                        </tr>
                      </thead>
                      <tr>
                        <th style="width: 80px;">아이디</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>이름</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>닉네임</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>주소</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>연락처</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>성별</th>
                        <td>내용</td>
                      </tr>
                      <tr>
                        <th>이메일</th>
                        <td>내용</td>
                      </tr>
                    </table>
                    <table class="table table-defualt table-borderless table align-middle" id="table">
                      <tr>
                        <th class="table-success" style="height: 37px;">나의 활동</th>
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
    </div>
     
      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>