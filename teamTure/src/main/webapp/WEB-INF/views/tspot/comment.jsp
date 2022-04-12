<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container " style ="border :1px solid lightgray;">
		<form action="#" class="mb-3" name="myform" id="myform" method="post" >
			<input type="hidden" name="tidx" value="${vo.tidx }">
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
						  placeholder="리뷰 댓글" name="trcontent"></textarea>
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

</body>
</html>