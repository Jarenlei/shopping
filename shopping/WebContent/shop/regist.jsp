<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
        <head>
            <meta charset="utf-8" />
            <c:set var="path" value='<%="http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/shop"%>'></c:set>
			<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
			<title>注册页面|快乐购</title>
			<script language="javascript" src="${path}/resources/js/import.js"></script>
			<script type="text/javascript">
			$(function(){
				 $("#regist-name").blur(function(){
					 $nam=$(this);
					 $nam.addClass("uk-form-success");
										/* var reg=/^[a-zA-z]\w{3,15}$/;
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
										} */
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
			</script>
			<style type="text/css">
					.uk-form-row{
							padding:10px 5%
					}
			</style>
</head>
<body>
            <div id="wrap" style="margin: 15px">
                <div id="mynav" class="">
                    <%@include file="navshow.jsp"%>
                </div>

		<div id="regist" class="uk-grid" style="margin:50px 80px">
				<div class="uk-flex uk-width-3-4" style="padding-top:20px">
						<form class="uk-form uk-width-1-1 uk-form-horizontal" action='<c:url value="/entry/index"/>' method="post" id="reg_form">
						<legend class="uk-text-center"><h2>注册快乐购账号</h2></legend>
							<div class="uk-form-row">
								<label for="regist-name" class="uk-form-label">用户名:</label>
								<div class="uk-form-controls">
                                 	<input id="regist-name" name="uname" type="text" class="uk-form-width-medium">
                                 	<span class="uk-form-help-inline" id="uname-text" style="color:red">/**必填**/</span>
                                 </div>
							</div>
							<div class="uk-form-row">
								<label for="regist-pass" class="uk-form-label">密码:</label>
								<div class="uk-form-controls">
									<input id="regist-pass" name="password" type="password" class="uk-form-width-medium">
									<span class="uk-form-help-inline" style="color:red">/**必填**/</span>
								</div>
							</div>
							<div class="uk-form-row">
								<label for="pass-agian"  class="uk-form-label">再输入密码:</label>
								<div class="uk-form-controls">
									<input id="pass-agian" type="password" class="uk-form-width-medium">
									<span class="uk-form-help-inline" style="color:red">/**必填**/</span>
								</div>
							</div>
						    <div class="uk-form-row">
                                    <span class="uk-form-label">性别：</span>
                                    <div class="uk-form-controls uk-form-controls-text">
                                        &nbsp;&nbsp;<label><input name="sex" type="radio" value="1"> 男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <label><input name="sex" type="radio" value="0"> 女</label>
                                    </div>
                                </div>
							<div class="uk-form-row">
								<label for="regist-mail"  class="uk-form-label">邮箱:</label>
								<div class="uk-form-controls">
										<input id="regist-mail" name="umail" type="text" class="uk-form-width-medium">
								</div>
							</div>
							<div class="uk-form-row">
								<label for="regist-phone"  class="uk-form-label">手机号码:</label>
								<div class="uk-form-controls">
										<input id="regist-phone" name="telphone" type="text" class="uk-form-width-medium">
								</div>
							</div>
							<div class="uk-form-row" style="padding:0 10px">
                   					<a class="uk-width-1-1 uk-button uk-button-primary uk-button-large" href="javascript:void(0)" id="regist_btn">立即注册</a>
                			</div>
						</form>
				</div>
				<div class="uk-flex uk-width-1-4">
						<img src="${path}/resources/images/q1.jpg">
				</div>
		</div>
		</div>
</body>
</html>