$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html=" + xhr.statusText);
	}
});

$(function(){
	$("#id").on("blur",function(){
		$.ajax({
			url : "/proj/joinCheckId.main",
			data : {
				inputId : $("#id").val()
			},
			success : function(data){
				var html;
				if(data.idUseStatus=="1"){
					html="<b>사용가능한 아이디 입니다.</b>"
					$("#idCheckStatus").html(html).css("color","green");
				}else{
					html="<b>아이디가 중복 됩니다.</b>"
					$("#idCheckStatus").html(html).css("color","red");
				}
			}
		});
	});
});