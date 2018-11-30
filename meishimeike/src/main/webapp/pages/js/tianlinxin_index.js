$(function(){
	$(".navbar-toggle").click(function(){
		$("#example-navbar-collapse").toggleClass('in');
	})
	
	setInterval(function(){
		var imgSrc = $('#img01')[0].src;
		var str=imgSrc.substring((imgSrc.length-6),(imgSrc.length-5))
				
		if(str==1){
			$('#img01')[0].src="/meishimeike/pages/img/bg2.jpeg";
		}else if(str==2){
			$('#img01')[0].src="/meishimeike/pages/img/bg3.jpeg";
		}else if(str==3){
			$('#img01')[0].src="/meishimeike/pages/img/bg4.jpeg";
		}else if(str==4){
			$('#img01')[0].src="/meishimeike/pages/img/bg1.jpeg";
		}
		
	},3000)
	
	$('#section-input').on("focus",function(){
		$('#section-input')[0].placeholder="";
	}).on("blur",function(){
		$('#section-input')[0].placeholder="搜索商家";
	})
	
	window.onload=function () {         

		 document.addEventListener('touchstart',function (event) {  

		           if(event.touches.length>1){  

		                event.preventDefault();  

		            }  

		        })  

		        var lastTouchEnd=0;  

		        document.addEventListener('touchend',function (event) {  

		            var now=(new Date()).getTime();  

		            if(now-lastTouchEnd<=300){  

		                event.preventDefault();  

		            }  

		            lastTouchEnd=now;  

		       },false)  

		}

})
