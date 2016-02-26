<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
       <meta charset="utf-8" />
       <title>快乐购物网</title>
       <c:set var="path" value='<%="http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/shop"%>'></c:set>
    	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
    	<script language="javascript" src="${path}/resources/js/import.js"></script>
<title>个人快乐购页面</title>
<script type="text/javascript">
	$(function(){
		$(".person-tab").on('change.uk.tab', function(){
			   alert($(this).prop("class"));
			});
	})
</script>
</head>
<body>
	 <div id="wrap" style="margin: 15px">
                <div id="mynav" class="">
                    <%@include file="navshow.jsp"%>
                </div>
                
                <form class="uk-form" action='<c:url value="/main/searchcom"/>' method="get">
                    <div id="shop-search" class="uk-grid uk-panel-box uk-panel-box-primary" style="margin-top: 15px">
                        <%@include file="searchshop.jsp" %>
                    </div>
                </form>
                
                <div class="uk-block" style="margin-top:15px;border-top:1px solid #333">
                	<ul class="uk-tab person-tab" data-uk-tab data-uk-switcher="{connect:'#single-person-tab'}">
					    <li><a href="1">我的订单</a></li>
					    <li><a href="2">已买商品</a></li>
					    <li data-uk-dropdown="{mode:'click'}">
					        <a href="3">更多服务</a>
					        <div class="uk-dropdown uk-dropdown-small">
					            <ul class="uk-nav uk-nav-dropdown">
					                <li><a href="">1</a></li>
					                <li><a href="">2</a></li>
					                <li><a href="">3</a></li>
					            </ul>
					        </div>
					    </li>
					</ul>
					
					<ul class="uk-switcher" id="single-person-tab" >
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
                </div>
     </div>
</body>
</html>