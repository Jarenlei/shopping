<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
           <link rel="stylesheet" href="${path}/resources/css/form-advanced.min.css"/>
    		<link rel="stylesheet" href="${path}/resources/css/form-select.min.css"/>
    		<link rel="stylesheet" href="${path}/resources/css/form-password.min.css"/>
    		<link rel="stylesheet" href="${path}/resources/css/notify.min.css"/>
           	<script language="javascript" src="${path}/resources/js/form-select.min.js"></script>
    		<script language="javascript" src="${path}/resources/js/form-password.js"></script>
    		<script language="javascript" src="${path}/resources/js/notify.min.js"></script>
    		<script language="javascript" src="${path}/resources/js/jquery.md5.js"></script>
<nav class="uk-navbar">
    <ul class="uk-navbar-nav">
        <li><a href="">时尚商城</a></li>
        <li><a href="#shop-commodity-list" data-uk-smooth-scroll="{offset: -90}">热销精品</a></li>
    </ul>
    <div class="uk-navbar-flip">
        <ul class="uk-navbar-nav">
        	<li><a href='<c:url value="/main/index"/>'>首页</a></li>
            <li>
                <c:choose>
                    <c:when test="${userName==null}">
                        <a href="#my-login" data-uk-offcanvas>登陆</a>
                        <li><a href="${path}/regist.jsp" class="uk-button">注册</a></li>
                    </c:when>
                    <c:otherwise>
                        <a href="javascript:void(0);"><c:out value="${userName}"/>，您好！</a>
                    </c:otherwise>
                </c:choose>
            </li>         
            <li><a href="javascript:void(0)">|</a></li>
            <li data-uk-dropdown="{mode:'click'}">
                <a href="javascript:void(0)">我的空间<i class="uk-icon-caret-down"></i></a>

                <div class="uk-dropdown uk-dropdown-small">
                    <ul class="uk-nav uk-nav-dropdown">
                        <li><a href="${contextPath }/main/getperson"><i class="uk-icon-user"></i> 我的快乐购</a></li>
                        <li><a href="">成交订单</a></li>
                        <li><a href=""><i class="uk-icon-cart-arrow-down"></i> 购物车</a></li>
                        <li><a href="">店铺收藏</a></li>
                        <li><a href="">我要开店</a></li>
                        <li><a href='<c:url value="/main/delsession"/>'>注销</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#">公告</a></li>
            <li data-uk-dropdown="{mode:'click'}">
                <a href="javascript:void(0)">更多<i class="uk-icon-caret-down"></i></a>

                <div class="uk-dropdown uk-dropdown-small">
                    <ul class="uk-nav uk-nav-dropdown">
                        <li><a href="">帮助我们</a></li>
                        <li><a href=""><i class="uk-icon-phone"></i> 投诉</a></li>
                        <li><a href=""><i class="uk-icon-envelope"></i> 建议反馈</a></li>
                        <li><a href="">在线咨询</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</nav>
<!-- 抽屉式边栏 -->
<div id="my-login" class="uk-offcanvas">
    <div class="uk-offcanvas-bar uk-offcanvas-bar-flip uk-contrast" style="color: #0091ca;padding-top: 10px">
        <div id="login-form">
            <form class="uk-form" action='<c:url value="/entry/model"/>' method="post">
                <legend class="uk-text-center">我的快乐购登陆</legend>
                <div class="uk-form-row" style="padding:15px 10px">
                    <label class="uk-form-label" for="user-name">账号：</label>

                    <div class="uk-form-controls uk-form-icon uk-form-width-medium">
                        <i class="uk-icon-pencil"></i>
                        <input type="text" placeholder="输入你的账号" id="user-name" name="uname">
                    </div>
                </div>
                <div class="uk-form-row" style="padding:15px 10px">
                    <label class="uk-form-label" for="user-pass">密码：</label>
                    <div class="uk-form-controls uk-form-icon uk-form-width-medium uk-form-password">
                        <i class="uk-icon-calendar"></i>
                        <input type="password" placeholder="输入密码"  id="user-pass"  name="password">
                        <a class="uk-form-password-toggle"
                           data-uk-form-password="{lblShow:'显示密码', lblHide:'隐藏密码'}">显示密码</a>
                    </div>
                </div>
                <div class="uk-form-row" style="padding:0 10px">
                    <a class="uk-width-1-1 uk-button uk-button-primary uk-button-large" href="javascript:void(0)" id="close-offcanvas">登陆</a>
                </div>
                <div class="uk-form-row uk-text-small" style="padding:0 10px">
                    <label class="uk-float-left"><input type="checkbox" name="saveme" value="1"> 记住我</label>
                    <a class="uk-float-right uk-link uk-link-muted" href="#">忘记密码?</a>
                </div>
            </form>
        </div>
    </div>
  </div>
  <script type="text/javascript">
  	$(function(){		
  		
  		$("#user-name,#user-pass").blur(function () {
            if ($(this).val() == "") {
            	$(this).removeClass("uk-form-success");
				$(this).addClass("uk-form-danger");
            } else {
            	$(this).removeClass("uk-form-danger");
				$(this).addClass("uk-form-success");
            }
        })
        
  		
  		$("#close-offcanvas").click(function () {
            var flag = $("#user-name,#user-pass").hasClass("uk-form-success");
            if (flag) {
            	var url = "${contextPath}/entry/model";
            	var saveme = $("input[name='saveme']:checked").val();
            	alert(saveme);
            	var args = {
            			uname:$("#user-name").val(),
            			password:$.md5($("#user-pass").val())
            	};
                $.post(url,args,function(data){
                	if(data==1){
                		window.location.href="${contextPath}/main/index";
                	}else{
                		UIkit.notify("账户名或密码错误，请验证之后再登陆！", {timeout: 1000,pos:'top-center',status  : 'warning'});
                	}
                })
            }else{
            	UIkit.notify("账户名或密码不能为空！", {timeout: 1000,pos:'top-center',status  : 'warning'});
            	return false;
            }
        }); 
  		
  		
  	})
  </script>