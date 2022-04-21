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
</head>
<body>
	
	<%@ include file = "/resources/header.jsp" %>
	
	<div class="container d-flex flex-wrap justify-content-center">
	
	
	<div id="boardtable" style="margin:0px;">
		<table class="table table-bordered table-light " >
			
			<tbody>
									
					<tr>
						<th>순번</th>
						<td>${vo.bidx}</td>
						<th>작성자</th>
						<td>${vo.bwriter}</td>
					</tr>
					
					
					
					<tr>
						<th>제목</th>
						<td><p style="width:100%">${vo.bsubject}</p></td>
						<th>작성일</th>
						<td>${vo.bwdate}</td>
						
					</tr>
					
					<tr>
						<th>내용</th>
						<td colspan="3"><p style="width:100%; height:70vh">${vo.bcontent}</p></td>
					</tr>
					
					<tr>
						<th><label for="inputFile" class="col-form-label"><strong>첨부 파일</strong></label></th>
				            
						<td colspan="3">
						
							<img style="width:100%;" src="<%=request.getContextPath()%>/resources/img/upload/${vo.filename}">
							
						
						
						</td>
						
						
					</tr>
					
			</tbody>
		</table>
		
		</div>
		<div id="listbutton" class="container d-flex flex-wrap justify-content-end">
			
				<button class="btn btn-outline-info me-auto" onclick="location.href='list.do'">목록으로</button>
			
			<c:if test="${member.midx != null}">
				<button class="btn btn-outline-info" onclick="location.href='modify.do?bidx=${vo.bidx}'">수정</button>
				<button class="btn btn-outline-info" onclick="del()">삭제</button>
				<form name="frm" action="delete.do" method="post">
					<input type="hidden" name="bidx" value="${vo.bidx}">
				</form> 
			</c:if>
		</div>
		
	
	<div class="container " style ="border :1px solid lightgray;">
		<form action="#" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data">
			
			<input type="hidden" name="bidx" value="${vo.bidx }">						
			<input type="hidden" name="midx" value="${member.midx }">
			
			<c:choose>
				
				<c:when test="${member.mnic != ''}">
					<input type="hidden" name="brwriter" value="${member.mnic }">
				</c:when>
				<c:otherwise>
					<input type="hidden" name="brwriter" value="${member.mname }">
				</c:otherwise>
			
			</c:choose>
			
			<div id="bridxReply">
				
			</div>
			
			
		<div class="container flex-wrap ">
		
			
					
			
					<div class="inputArea">
								 <label for="gdsImg" >이미지 첨부</label>
								 <input type="file" id="gdsImg" name="uploadFile" style="display:none;"/>
								 <input type="hidden" name="img" id="img" value="">
								 <div class="select_img container"><img src="" id="originImg" style="margin:20px 0; width:100%;"/></div>
								 
								 <script>
								  $("#gdsImg").change(function(){
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
							<div class="container mb-3" style="text-align: end; display:none;" id="resetImg">
							
									<input type="button" onclick="resetImg(this)" value="첨부삭제" class="btn btn-outline-info">
							
							</div>
							
					</div>
			
			<div class="container">
				<textarea class="col-auto form-control" id="reviewContents"
						  placeholder="리뷰 댓글" name="brcontent"></textarea>
			</div>
		</div>	
		</form>		
		<div class="d-flex flex-wrap container justify-content-end mb-2">
		
				<div id="alert" class="me-auto" style="background:#f8f8ba; display:none;"><p>이미지 수정은 이미지를 클릭하십시오. </p></div>
				<div id="saveButton"><button type="button" class="btn btn-outline-info" onclick="replysave()" >저장</button></div>
				
		</div>
		
		<div id="breplytable" class="col table-responsive">
		<table class="table table-bordered table-light align-middle ">
			
						
			<tbody id="replyTbody">
					<c:forEach items="${list }" var="lo">
					<c:choose>
						
						<c:when test="${vo.bidx eq lo.bidx }">
						<tr>
						
							<th style="width:20%">${lo.brwriter } <small>(${lo.brwdate})</small></th>
						
							
							<c:choose>
									<c:when test="${lo.img ne ''}">
											
											<td ><p >${lo.brcontent }</p> </td>
									
											<td style="width:20%"><img src="<%=request.getContextPath()%>/resources/img/upload/${lo.img}"  style="margin:20px 0; width:100%;" id="reimg" onclick="modalImg(this)"/></td>
											
											
									</c:when>
									
									<c:otherwise>
									
											<td colspan="2"><p >${lo.brcontent }</p> </td>
										
									</c:otherwise>
							</c:choose>
							
							<c:if test="${member.midx eq lo.midx}">
							 			
							 			<td id="buttonReply">
							 				<input type="hidden" name="bridx" value="${lo.bridx}">
							 				<%-- <button onclick="modify(${lo.bridx},this)" class="btn btn-outline-info">수정</button> --%>	
							 				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16" onclick="modify(${lo.bridx},this)">
  												<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
											</svg>
											<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" onclick="deleteFn(${lo.bridx},this)">
											  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
											  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
											</svg> 
							 				<%-- <button onclick="deleteFn(${lo.bridx},this)" class="btn btn-outline-info">삭제</button>	 --%>						 			
							 			</td>
							
							</c:if>
							
							
							
							
							
						</tr>
									
						
						
						
						</c:when>
							
						
					</c:choose>
					
						
					
					</c:forEach>
					
			</tbody>
		</table>
		
		
		</div>
		
		<div class="modal" id="modalView">
				  <span class="close">&times;</span>
				  <img class="modal_content">
		</div>
		
		<div id="breply" class="container">  </div>
		
		
		
		</div>
		
		
	</div>

	<%@ include file = "/resources/footer.jsp" %>
	<script>
	var isrc = '<%=request.getContextPath()%>';
	var check = $("input[name='midx']").val();
	var clickBtn = null;
	
	
	
	const modal = document.querySelector(".modal");
	const modal_img = document.querySelector(".modal_content");
	const span = document.querySelector(".close");

	
	/* 이미지 클릭 onclick src 클릭한 부모의 값 가져와서 하면될듯? */
	
	function modalImg(obj){
		modalDisplay("block");
		console.log(obj);
		
		var imgC = obj.src;
		
		console.log(imgC);
		
		modal_img.src = imgC;	
		
		
	}
	
	
	span.addEventListener('click', ()=>{
	  modalDisplay("none");
	});
	modal.addEventListener('click', ()=>{ 
	  modalDisplay("none");
	});
	function modalDisplay(text){
	  modal.style.display = text;
	}
	
	
	function del(){
		var YN;
		
		YN=confirm("정말로 삭제하시겠습니까?");
		if(YN){
		document.frm.submit();
		
		}
	}
	
	
	function replysave(){
				
		if(check != ''){
		
		swal({
			  title: "저장하시겠습니까?",
			  imageUrl: "",
			  buttons: true,
			  dangerMode: true,
			})			
		.then((willDelete) => {
			  if (willDelete) {
			    swal("댓글 저장 성공", {
			      icon: "success",
			    });
			    
			    var formData = new FormData($("#myform")[0]);
				console.log(formData);			
			 $.ajax({
				url: "/controller/board/breplyinsert",
				type: "post",
				/* data: $("form").serialize(), */
				
				data: formData,
			 	cache: false,
				contentType: false,
				processData: false,
				success : function(data){
					
					
					var html = "";					
						
						html += "<tr>";
						html += "<th style='width:20%'>"+data.brwriter+" <small>("+data.brwdate+")</small></th>";
						
						if(data.img != ''){
							html	 += "<td><p>"+data.brcontent+"</p></td>";
							
							html	+= "<td style='width:20%'><img src='"+isrc+"/resources/img/upload/"+data.img+"' style='margin:20px 0; width:100%' id='reimg'/></td>";
							html 	+= "<div class='model'>";
							html	+= "<span class='close'>&times;</span>";
							html 	+= "<img class='modal_content'>";
							html 	+= "</div>";
							
							if(data.midx == check){
							html 	+=  "<td id='buttonReply'><button onclick='modify("+data.bridx+",this)' class='btn btn-outline-info'>수정</button>"
									+   " <button onclick='deleteFn("+data.bridx+",this)' class='btn btn-outline-info'>삭제</button></td>";
							}
							
						}else{
							html 	+= "<td colspan='2'><p>"+data.brcontent+"</p></td>";
							
							
							if(data.midx == check){
								
								html 	+= "<td id='buttonReply'><button onclick='modify("+data.bridx+",this)' class='btn btn-outline-info'>수정</button>"
										+  " <button onclick='deleteFn("+data.bridx+",this)' class='btn btn-outline-info'>삭제</button></td>";
								}
							
						}
						html += "</tr>";
						
						
						$("#replyTbody").prepend(html);
						
						$("#myform")[0].reset();
							
						
					
					
				}
			 
			});
			    
			  } else {
			    swal({
			    	title: "저장을 취소하셨습니다."});
			  }
			});
							
			
		
			
			
			
		 
		}else{
			swal({
				title: "로그인후 이용해 주십시요."});
		}
			
			
		
		
		
	}
		
	
	function deleteFn(bridx,obj){
		
		var YN;
		YN = confirm("정말삭제하시겠습니까?");
		
		if(YN){
		$.ajax({
			url: "/controller/board/deleteReply",
			type: "post",
			data: "bridx="+bridx,
			success: function(data){
				console.log("삭제 실행");
				if(data>0){
					$(obj).parent().parent().remove(); 
				}
			}
			
			
		});
		}
	}
	
	function modify(bridx,obj){
		clickBtn = obj;
		
		var imgcheck = $(obj).parent().prev().find("img").attr("src");
		
		console.log(clickBtn);
		
	    
	      $('html,body').animate({scrollTop:1500},300);
	      
	      $("#resetImg").css("display","block");
	      
	      $("#gdsImg").val("");
	     
					
			if(imgcheck== null){
					console.log("이미지 널");
							
				var brcontent = $(obj).parent().prev().text();
							
				$("#reviewContents").val(brcontent);
				$("#saveButton").html("<input type='button' value='수정' onclick='updateReply(this)' class='btn btn-outline-info'> <input type='button' value='취소' onclick='cancleReply(this)' class='btn btn-outline-info'> ");
				
				
				/* $(obj).parent().html("<input type='hidden' name='bridx' value='"+bridx+"'> <input type='button' value='취소' onclick='cancleReply(this)' class='btn btn-outline-info'>"); */
				
				$("#alert").css("display","block");
				
				
							
				}
				else{
					console.log("이미지 널이아닌값");
					
					var brcontent = $(obj).parent().prev().prev().text();
					console.log(brcontent);
					
					
					$("#reviewContents").val(brcontent);
					$("#saveButton").html("<input type='button' value='수정' onclick='updateReply(this)' class='btn btn-outline-info'> <input type='button' value='취소' onclick='cancleReply(this)' class='btn btn-outline-info'>");
										
					/* $(obj).parent().html("<input type='hidden' name='bridx' value='"+bridx+"'> <input type='button' value='취소' onclick='cancleReply(this)' class='btn btn-outline-info'>"); */
				
					$("#alert").css("display","block");
					
					$("#originImg").attr("src",imgcheck); 
					
					$("#img").val();
					
					console.log(imgcheck);
															
					var list = imgcheck.split("/");
																
					$("#img").val(list[5]);
									
				
			}
			
				
			/* bridx value 값 넣기  */
			
			$("#bridxReply").html("<input type='hidden' name='bridx' value='"+bridx+"'>");
			
		
		 
		
		
		
	}
	
	function cancleReply(obj){
					
			$("#reviewContents").val("");	//리뷰 brcontent값 초기화 저장버튼 정상화
			$("#saveButton").html("<button type='button' class='btn btn-outline-info' onclick='replysave()' >저장</button>");
			$("#alert").css("display","none");
			$("#img").val("");
			$("#originImg").attr("src"," ");
			$("#bridxReply").html("");
			$("#gdsImg").val("");
			$("#resetImg").css("display","none");
		
	}
	
	function updateReply(obj){
		
		var YN;
		
		YN = confirm("수정하시겠습니까?");
		
		
		if(YN){
			
			
				
				var formData = new FormData($("#myform")[0]);
				
				$.ajax({
					url: "/controller/board/breplyUpdate",
					type: "post",
					data: formData,
					cache: false,
					contentType: false,
					processData: false,
					success : function(data){
						/* 덧글 저장 실행 */
						
						console.log(data.bridx);
						
						var bridxarr = $("input[name='bridx']").get();
						var brcontentarr = $("input[name='brcontent']").get();
						
						console.log(bridxarr);
						
						
						
						
						for(var i=0; i<bridxarr.length; i++){
								
							console.log(brcontentarr[i].val());
							
							if(bridxarr[i].value == data.bridx){
								
								
								
								 
							
						
							}
						}
						
						
						
						
/* 						var FinBridx = $("input[name='bridx']").parent()[1];
						var FinParent = $("input[name='bridx']").parent().val(); */
												
						/* console.log(FinBridx);
						console.log(FinParent); */
						
						/* cancleReply(obj); */
						
					}
				});
				
				
			}
				
			
			
			
		
	}
	
	
	function resetImg(obj){
		
		$("#img").val("");
		$("#originImg").attr("src"," ");
		$("#gdsImg").val("");
		
		
	}
	
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>