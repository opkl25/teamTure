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
		<table class="table table-bordered table-light ">
			
			<tbody>
									
					<tr>
						<th>순번</th>
						
						<th>작성자</th>
						
					</tr>
					
					
					
					<tr>
						<th>제목</th>
						
						<th>작성일</th>
						
						
					</tr>
					
					<tr>
						<th>내용</th>
						
					</tr>
					
			</tbody>
		</table>
		
		</div>
		<div id="listbutton" class="container d-flex flex-wrap justify-content-end">
			
				<button class="btn btn-outline-info me-auto" onclick="location.href='/home.do'">홈으로</button>
			
				<button class="btn btn-outline-info" onclick="location.href='modify.do'">수정</button>
				
				<form name="frm" action="delete.do" method="post">
					<input type="hidden" name="bidx" value="">
				</form> 
		</div>
	</div>

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	function del(){
		document.frm.submit();
	}
	
	
	 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	 mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 2 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
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