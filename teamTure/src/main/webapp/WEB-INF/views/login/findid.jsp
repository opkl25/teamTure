<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/css/findid.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/css/header.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/resources/header.jsp" %>
	<div class="container-fluid">
        <div class="container">아이디 찾기</div>
       
          <hr>
          <p class="content_summary">회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 아이디를 찾을 수 있습니다.</p>
    </div>
    <div class="container fwrap">
        <div class="container-sm">
            <div class="box_inn_sub">
                <dl>
                    <dt>
                        <label for="mname" class="label_txt">이름</label>
                    </dt>
                    <dd>
                        <input type="text" id="phone" name="phone" maxlength="40" class="input_txt" style="width:271px;">
                    </dd>
                    <dt>
                      <label for="phone" class="label_txt">휴대전화</label>
                  </dt>
                  <dd>
                      <input type="text" id="phone" name="phone" maxlength="40" class="input_txt" style="width:271px;">
                  </dd>
                </dl>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-secondary btn-sm">다음 </button>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>