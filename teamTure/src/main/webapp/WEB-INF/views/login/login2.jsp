<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css"  rel="stylesheet" />
</head>
 <body>
 
 
 
      <section class="login py-5 bg-light">
            <div class="container">
                <div class="row g-0">
                    <div class="col-lg-5">
                        <img src="img/logo2.png" class="img-fluid">
                    </div>
                    <div class="col-lg-7 text-center py-5">
                        <h1>Welcom Back</h1>

                        <form>
                            <div class="form-row py-3 pt-5">
                                <div class="offset-1 col-lg-10">
                                    <input type="text" class="inp px-3" placeholder="아이디">
                                </div>
                            </div>
                            <div class="form-row py-3">
                                <div class="offset-1 col-lg-10">
                                    <input type="text" class="inp px-3" placeholder="비밀번호">
                                </div>
                            </div>
                            <div class="form-row py-3">
                                <div class="offset-1 col-lg-10">
                                    <button class="btn1">로그인</button><br><br>
                                    <span>아이디 찾기</span>&nbsp;&nbsp;
                                    <a><span>비밀번호 찾기</span></a>
                                    <a href="member/create.do"><span>회원가입</span></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
      </section>
   
   
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>