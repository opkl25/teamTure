<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/css/header.css"  rel="stylesheet" />
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=1bf492b3b57243db00cd7afa296c3471"></script>
</head>
<body>
	
	<%@ include file = "/resources/header.jsp" %>
	
	<div class="container d-flex flex-wrap justify-content-center">
	
	<div id="map" style="width:100%;height:350px;"  class=" container col">
	
	</div>
	<div id="boardtable" class="col">
		<table class="table table-bordered table-light table-responsive ">
			
			<tbody>
					
					<tr>
						
						<th  style="text-align:center;">${vo.lregion} </th>
					</tr>
					
					<tr>
						<td >${vo.lcontent}</td>
					</tr>
					
			</tbody>
		</table>
		
		</div>
		<div id="listbutton" class="container d-flex flex-wrap">
			
				<button class="btn btn-outline-info me-auto" onclick="location.href='/controller'">홈으로</button>
			
				<button class="btn btn-outline-info" onclick="location.href='modify.do?lidx=${vo.lidx}'">수정</button>
				
				
		</div>
		
		<div class="container ">
			<div class="row row-cols-1 row-cols-md-4 ">
		    <div class="col">
				  <div class="card h-100" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    </div>
		    
		    <div class="col">
				  <div class="card h-100" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    </div>
		    
		    <div class="col">
				  <div class="card h-100" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    </div>
		    
		    <div class="col">
				  <div class="card h-100" >
				  	<a href="#">
				  		<img src="/controller/img/gunsan/경암동 철길마을.jpg" id="listimg" class="card-img-top img-thumbnail img-fluid img-thumbnail" alt="경암동 철길마을" >
				  	</a>
				  <div class="card-body">
				    <h5 class="card-title">군산 - 경암동 철길마을</h5>
				    <p class="card-text">소개글입니다.</p>
				    
				  </div>
				</div>
		    </div>
		    
		   </div>
		
		</div>
		
		
		<div class="container " style ="border :1px solid lightgray;">
		<form action="#" class="mb-3" name="myform" id="myform" method="post" >
			<div class="container d-flex flex-wrap ">
			<fieldset class="me-auto">
						
				<span class="text-bold">별점</span>
				<input type="radio" name="reviewStar" value="5" id="rate1"><label
					for="rate1">★</label>
				<input type="radio" name="reviewStar" value="4" id="rate2"><label
					for="rate2">★</label>
				<input type="radio" name="reviewStar" value="3" id="rate3"><label
					for="rate3">★</label>
				<input type="radio" name="reviewStar" value="2" id="rate4"><label
					for="rate4">★</label>
				<input type="radio" name="reviewStar" value="1" id="rate5"><label
					for="rate5">★</label>
												
			</fieldset>
			
			</div>				
			
			<div>
				<textarea class="col-auto form-control" type="text" id="reviewContents"
						  placeholder="리뷰 댓글"></textarea>
			</div>
		</form>		
		<div class="d-flex flex-wrap container justify-content-end mb-2">
				<button type="submit" class="btn btn-outline-info" onclick="location.href='#'" >저장</button>
				
				</div>			
		
		<div id="boardtable" class="col table-responsive">
		<table class="table table-bordered table-light align-middle ">
			
			<tbody>
					
					<tr>
						
						<th>작성자</th>
						<td> </td>
						
					</tr>
					
					<tr>
						<th>내용</th>
						<td ><p ></p> </td>
					</tr>
					
			</tbody>
		</table>
		
		
		</div>
		
	</div>

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	
	
	
	 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	 mapOption = { 
		 
	        center: new kakao.maps.LatLng(${vo.latitude} , ${vo.longitude} ), // 지도의 중심좌표
	        level: 7 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(${vo.latitude}, ${vo.longitude} ); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);     

	
	
	
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>