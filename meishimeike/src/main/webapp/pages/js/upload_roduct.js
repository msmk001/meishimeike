var UpFile = function (file, imgList, node) {
	imgList = $(node).siblings().find("img");
	var xhr = $.ajaxSettings.xhr();
	var formFileData = new FormData();
	var showImage = $("<img />");
	var fileReader = new FileReader();
	var imageList = $("<li></li>");
	
	imageList.append(showImage);
	imgList.append(imageList);
	fileReader.addEventListener("load", function () {
		showImage.attr("src", this.result);
		console.log(this);
	}, true);
	
	formFileData.append("imgFile", file);
	
	fileReader.readAsDataURL(file);
	this.uploadFile = function () {
		$.ajax({
			type: "post",
			url: "fileUpload",
			async: true,
			data: formFileData,
			scriptCharset : "UTF-8",
			cache : false,
			processData : false,  //必须false才会避开jQuery对 formdata 的默认处理
			contentType : false,  //必须false才会自动加上正确的Content-Type
			success: function(result, status, xhr) {
				console.log("result= " + result);
				console.log("status= " + status);
			},
			error: function(xhr, status, error) {
				console.log("error= " + error);
				console.log("status= " + status);
			},
			beforeSend: function(xhr) {
				console.log(xhr);
			},
			xhr: function () {
				xhr.upload.addEventListener("progress", function (evt) {
					if (evt.lengthComputable) {
						var percentComplete = evt.loaded / evt.total;
						console.log(evt.loaded + " / " + evt.total);
						console.log(percentComplete * 100 + "%");
					}
				}, false);
				console.log(xhr);
				return xhr;
			},
		});
	}
};
$(function() {
	var uploadForm = $("#upload_form").get(0);
	var imglistFile = $("#imglist_file");// 上传文件的表单元素
	var imgList = $("#img_list");// 显示图片列表的列表
	
	
	if(window.FileReader) {
//		alert("支持图片显示");
	} else {
		alert("Not supported by your browser!");
	}
	
	var upFileArr = new Array ();
	
	var imgSelectFiles = new Array();
	function addImgSelectFile (file, nodes) {
//		var fileReader = new FileReader();
//		fileReader.addEventListener("load", function (evt) {
//			var showImage = $("<img />");
//			showImage.attr("src", evt.target.result);
//			var imageList = $("<li></li>");
//			imageList.append(showImage);
//			imgList.append(imageList);
//		}, false);
//		fileReader.readAsDataURL(file);
		upFileArr[upFileArr.length] = new UpFile(file, imgList, node);
		upFileArr[upFileArr.length - 1].uploadFile();
	}
	imglistFile.change(function () {
		for (var i = 0; i < this.files.length; i++) {
			var thatFile = this.files[i];
			if(!/image\/\w+/.test(thatFile.type)){ 
				alert("文件必须为图片！"); 
				continue;
			}
			addImgSelectFile(thatFile, this);
		}
//		this.value = "";
		//if(type!=".jpg"&&type!=".gif"&&type!=".jpeg"&& type!=".png"){
	});
	
	var topimgForm = $("input[type=file]");// 显示图片封面的表单元素
	console.log(topimgForm);
//	var topImageView = $(".top_image");
	topimgForm.change(function () {
		var topImageNode = $(this).prev().prev();
		console.log(topImageNode);
		topImageNode.css("display", "block");
		var topImgFile = this.files[0];
		var fileReader = new FileReader();
		fileReader.addEventListener("load", function (evt) {
//			topImageNode.css({
//				backgroundImage : evt.target.result,
//				backgroundSize : '240 180'
//			});
			topImageNode.attr("src", evt.target.result)
		}, false);
		fileReader.readAsDataURL(topImgFile);
	});
	
	$(".add_button").click(function () {
		var btn = $(this).prev();//.find(".topimg_file");
		console.log(btn)
		btn.click();
	});
	
	
	$(".save_imgs").click(function() {
		uploadFormData = new FormData(uploadForm);
		console.log(uploadFormData);
		var uploadFormData = new FormData(uploadForm);
			console.log(uploadFormData);
			uploadFormData.forEach(function(value, key) {
				console.log(key + " = " + value);
				console.log(value);
			});
	});
	
	var $title = $("#form-data-title");
	var $explain = $("#form-data-explain");
	var $titleCount = $("#form-data-title-count");
	var $explainCount = $("#form-data-explain-count");
	if (window.propertychange) {
		console.log("propertychange");
		
	} else if (window.input) {
		console.log("input");
		
	} else {
		console.log("暂无事件");
		
	}
	$title.bind('input propertychange', titleChange);
	$explain.bind('input propertychange', explainChange);
	$explain.focus(function () {
		var value = this.innerHTML;
		if (value.trim() == "作品说明")  this.innerHTML = "";
	})
	$explain.blur(function () {
		var value = this.innerHTML;
		if (value.trim().length === 0) this.innerHTML = "作品说明";
	})
	function titleChange () {
		var value = this.value;
		console.log(value);
		var len = getAllLen(value, 50);
		if (len < 0) {
			len = "" + len;
			len = len.fontcolor("red");
		}
		$titleCount.html(len);
	}
	function explainChange () {
		var value = this.innerHTML;
		console.log(value);
		var len = getAllLen(value, 2000);
		if (len < 0) {
			len = "" + len;
			len = len.fontcolor("red");
		}
		$explainCount.html(len);
	}
	
	function getAllLen (value, size) {
		var len = size - value.length;
		len -= getZHLen(value);
		return len;
	}
	
	function getZHLen (value) {
		var leng = 0;
		for (var i=0; i < value.length; i++) 
			if (value.charCodeAt(i) > 127 || value.charCodeAt(i) == 94) leng++;
		return leng;
	}
	
	
	var $selectType = $("#select_type"),
		$selectAuthor = $("#select_author"),
		$selectTypeSelectShow = $("#select_type>.select_show>span"),
		$selectAuthorSelectShow = $("#select_author>.select_show>span"),
		$selectTypeSelect = $("#select_type>.select_options"),
		$selectAuthorSelect = $("#select_author>.select_options"),
		$selectTypeOption = $("#select_type>.select_options>li"),
		$selectAuthorOption = $("#select_author>.select_options>li");
		
	console.log($selectType.length)
		
	$selectType.click(function() {
		$selectTypeSelect.toggleClass("hide");
		$selectAuthorSelect.addClass("hide");
	}); 
	$selectAuthor.click(function() {
		$selectAuthorSelect.toggleClass("hide");
		$selectTypeSelect.addClass("hide");
	});
	$selectTypeOption.click(function (event) {
		$selectTypeOption.removeClass("active");
		this.setAttribute("class", "active");
		var id = this.getAttribute("data-id");
		var txt = this.innerText;
		$selectTypeSelectShow.text(txt);
		console.log("id = " + id + "\ntxt = " + txt);
		$selectTypeSelect.addClass("hide");
		event.stopPropagation();
		return false;
	});
	$selectAuthorOption.click(function (event) {
		$selectAuthorOption.removeClass("active");
		this.setAttribute("class", "active");
		var id = this.getAttribute("data-id");
		var txt = this.innerText;
		$selectAuthorSelectShow.text(txt);
		console.log("id = " + id + "\ntxt = " + txt);
		$selectAuthorSelect.addClass("hide");
		event.stopPropagation();
		return false;
	});
	
})