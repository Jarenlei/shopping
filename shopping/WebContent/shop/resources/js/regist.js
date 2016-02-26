$(function(){
$("#regist-name").blur(function(){
						var reg=/^[a-zA-z]\w{3,15}$/;
						$nam=$(this);
						if(!reg.exec($(this).val())){
							$nam.removeClass("uk-form-success");
							$nam.addClass("uk-form-danger");
						}else{
							$.post("${contextPath}/entry/validate",{uname:$nam.val(),date:new Date},function(data){
								if(data!=0){
									$("#uname-text").html("此用户已被注册过了！");
									$nam.removeClass("uk-form-success");
									$nam.addClass("uk-form-danger");
								}else{
									$("#uname-text").html("");
									$nam.removeClass("uk-form-danger");
									$nam.addClass("uk-form-success");
								}
							})
						}
					});
					
					$("#regist-pass").blur(function(){
						var reg=/^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,22}$/;
						if(!reg.exec($(this).val())){
							$(this).removeClass("uk-form-success");
							$(this).addClass("uk-form-danger");
						}else{
							$(this).removeClass("uk-form-danger");
							$(this).addClass("uk-form-success");
						}
					});
					
					$("#pass-agian").blur(function(){
						var ps=$("#regist-pass").val();
						var pa=$(this).val();
						if(pa!=ps){
							$(this).removeClass("uk-form-success");
							$(this).addClass("uk-form-danger");
						}else{
							$(this).removeClass("uk-form-danger");
							$(this).addClass("uk-form-success");
						}
					});
					
					$("#regist_btn").click(function(){
						$inp=$("#reg_form").find(":input").toArray();
						var flag=false;
						$.each($inp,function(n,ery){
							if(n<3){
								if(!$(ery).hasClass("uk-form-success")){
									flag=true;
									return false;
								}
							}
							if($(ery).hasClass("uk-form-danger")){
								flag=true;
								return false;
							}
						});
						if(flag){
							return false;
						}
						var pass=$.md5($("#regist-pass").val());
						 $.post("${contextPath}/entry/index",{uname:$("#regist-name").val(),password:pass,sex:$("input[name='sex']:checked").val(),umail:$("#regist-mail").val(),telphone:$("#regist-phone").val()},function(data){
							if(data!=1){
								alert("注册失败，请正确填写您的信息！");
							}else{
								window.location.href="${contextPath}/main/index";
							}
						}) 
					});
})