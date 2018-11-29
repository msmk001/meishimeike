$(function(){
	$(".navbar-toggle").click(function(){
		$("#example-navbar-collapse").toggleClass('in');
	})
	
	setInterval(function(){
		var imgSrc = $('#img01')[0].src;
		var str=imgSrc.substring((imgSrc.length-6),(imgSrc.length-5))
				
		if(str==1){
			$('#img01')[0].src="/meishimeike/pages/img/bg2.jpeg";
		}else{
			$('#img01')[0].src="/meishimeike/pages/img/bg1.jpeg";
		}
		
	},3000)
})
