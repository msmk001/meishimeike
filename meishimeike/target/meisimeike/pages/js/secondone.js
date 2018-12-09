$(function(){
	$("#header_div3_1").click(function(){
	$("#header_div3_2").css({"color":"#999999","border-bottom":"0px solid blue"});
	$("#header_div3_3").css({"color":"#999999","border-bottom":"0px solid blue"});
	$(this).css({"color":"#0000000","border-bottom":"3px solid blue"});
})
$("#header_div3_2").click(function(){
	$("#header_div3_1").css({"color":"#999999","border-bottom":"0px solid blue"});
	$("#header_div3_3").css({"color":"#999999","border-bottom":"0px solid blue"});
	$(this).css({"color":"#000000","border-bottom":"3px solid blue"});
})
$("#header_div3_3").click(function(){
	$("#header_div3_1").css({"color":"#999999","border-bottom":"0px solid blue"});
	$("#header_div3_2").css({"color":"#999999","border-bottom":"0px solid blue"});
	$(this).css({"color":"#000000","border-bottom":"3px solid blue"});
})
$("#sec_div2_one>ul>li").click(function(){
	$("#sec_div2_one>ul>li").css({"color":"block","background-color":"white","border-radius":"0px"})
	$(this).css({"color":"white","background-color":"#666666","border-radius":"5px"});
})
})
