$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html=" + xhr.statusText);
	}
});

$(function(){
	$("#secondPass").on("blur",function(){
		$.ajax({
			url : "/proj/passwordCheck.main",
			data : {
				inputFirstPass : $("#pw").val(),
				inputSecondPass : $("#secondPass").val()
			},
			success : function(data){
				var html;
				if(data.secondPassCheck=="1"){
					html="<b>비밀번호가 일치합니다.</b>"
					$("#pwCheckStatus").html(html).css("color","green");
				}else{
					html="<b>비밀번호가 불일치!!</b>"
					$("#pwCheckStatus").html(html).css("color","red");
				}
			}
		});
	});
});