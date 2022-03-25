<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/findpwd.css">
    <link href="<%=request.getContextPath() %>/css/header.css" rel="stylesheet">
    <title>Hello, world!</title>
  </head>
<%@ include file = "/resources/header.jsp" %>
    <div class="container-fluid">
        <div class="container">비밀번호 찾기</div>
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item">01.아이디 입력</li>
              <li class="breadcrumb-item active" aria-current="page">02.본인확인</li>
              <li class="breadcrumb-item active" aria-current="page">03.비밀번호 재설정</li>
            </ol>
          </nav>
          <hr>
          <p class="content_summary">찾고자하는 비밀번호의 아이디를 입력해주세요</p>
    </div>
    <div class="container fwrap">
        <div class="container-sm">
            <form>
                <div class="col-auto">
                <input type="text" class="form-control" id="inputPassword2" placeholder="아이디를 입력해주세요">
                </div>
                
            </form>
        </div>
    </div>
    <button type="submit" class="btn btn-secondary btn-sm">다음 </button>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>