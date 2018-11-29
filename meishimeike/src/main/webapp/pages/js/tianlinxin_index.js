$(function(){
	$(".navbar-toggle").click(function(){
		$("#example-navbar-collapse").toggleClass('in');
	})
	
   $("#section-input").focus(function(){
   	   $(this).css({"width":"260px"});
   })
    $("#section-input").blur(function(){
   	   $(this).css({"width":"200px"});
   })
   
   $("#section-input").mousemove(function(){
   	 $(this).css({"width":"260px"});
   })
   $("#section-input").mouseout(function(){
   	 $(this).css({"width":"200px"});
   })
   $(".nav2-a").click(function(){
   	$(".nav2-a").siblings().css({"color":"blick"});
   	 $(this).css({"color":"red"});
   	 $(".nav2-a").css({"background-color":"#ffffff"});
      $(this).css({"background-color":"#E6E6E6"}); 
   	  
   	  
   })
})
