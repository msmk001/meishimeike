$(function() {
	$(".navbar-toggle").click(function() {
		$("#example-navbar-collapse").toggleClass('in');
	})

	setInterval(function() {
		var imgSrc = $('#img01')[0].src;
		var str = imgSrc.substring((imgSrc.length - 6), (imgSrc.length - 5))

		if(str == 1) {
			$('#img01')[0].src = "/meishimeike/pages/img/bg2.jpeg";
		} else if(str == 2) {
			$('#img01')[0].src = "/meishimeike/pages/img/bg3.jpeg";
		} else if(str == 3) {
			$('#img01')[0].src = "/meishimeike/pages/img/bg4.jpeg";
		} else if(str == 4) {
			$('#img01')[0].src = "/meishimeike/pages/img/bg1.jpeg";
		}

	}, 3000)

	$('#section-input').on("focus", function() {
		$('#section-input')[0].placeholder = "";
	}).on("blur", function() {
		$('#section-input')[0].placeholder = "搜索商家";
	})

	window.onload = function ()  {         

		 
		document.addEventListener('touchstart', function (event)  {  

			           
			if(event.touches.length > 1) {  

				                
				event.preventDefault();  

				            
			}  

			        
		})  

		        
		var  lastTouchEnd = 0;  

		        
		document.addEventListener('touchend', function (event)  {  

			            
			var  now = (new  Date()).getTime();  

			            
			if(now - lastTouchEnd <= 300) {  

				                
				event.preventDefault();  

				            
			}  

			            
			lastTouchEnd = now;  

			       
		}, false)  

	}

	//---------------------滚动条事件---------------------------------
	$(window).on("scroll", function() {
		var top_margin = $(this).scrollTop();
		if(top_margin > 200) {
			$('#on_top').slideDown();
		} else {
			$('#on_top').slideUp();
		}
	})
	$('#on_top').on('click', function() {
		$('body,html').animate({
			scrollTop: "0px"
		}, 300);
	})

	$('#section-input').on("keypress", function() {
		var my_val = $(this).val();
		$('.main_box').hide()

		$('.loader--spinningDisc,#spBox').show()

		setTimeout(function() {
			

			if(my_val.trim() == "") {
				$('.hide').each(function() {
					$(this).parents(".main_box").show(200);
				});
				$('.loader--spinningDisc,#spBox').hide()
				return;
			}
			$('.hide').each(function() {
				var p1_val = $(this).prev().prev().find("p").first().text().trim();
				if(p1_val.search(my_val) == -1) {
					$(this).parents(".main_box").hide(200)
				} else {
					$(this).parents(".main_box").show(0);
				}
			});
			$('.loader--spinningDisc,#spBox').hide()

		}, 920)

	});

	$('.nav2-a').on("click", function() {
		if(screen.width<500){
			$('body,html').animate({
				scrollTop: "170px"
			}, 300);
		}
		
		$('.main_box').hide()

		$('.loader--spinningDisc,#spBox').show()
		var itm_val = $(this).text();
		setTimeout(function() {
			
			$('.hide').each(function() {
				if(this.value == itm_val) {
					$(this).parents(".main_box").show(0);
				} else {
					$(this).parents(".main_box").hide(200);
				}

			});
			
			$('.loader--spinningDisc,#spBox').hide();

		}, 920)

	});
	//-----------------------------------------------------


})