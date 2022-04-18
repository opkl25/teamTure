<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <link href="<%=request.getContextPath() %>/css/topbtn.css"  rel="stylesheet" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
   <script>
    $(function(){
  $('#back-to-top').on('click',function(e){
      e.preventDefault();
      $('html,body').animate({scrollTop:0},600);
  });
  
  $(window).scroll(function() {
    if ($(document).scrollTop() > 100) {
      $('#back-to-top').addClass('show');
    } else {
      $('#back-to-top').removeClass('show');
    }
  });
});
    </script>
    <aside>
    	<a id="back-to-top"></a>

		

    </aside>
   
