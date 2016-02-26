<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="uk-width-1-4 uk-text-center">
	<p class="uk-clearfix">
		<a href="#"><img src="${path}/resources/images/logo.png"> <span
			class="uk-h2">快乐购</span></a>
	</p>
</div>
<div class="uk-width-3-4 uk-grid">
	<div class="uk-width-2-3 uk-form-icon">
		<i class="uk-icon-search" style="top:20px"></i> <input class="uk-width-1-1"
			style="height: 40px" type="search" name="cname" value="${searchDto.cname }"
			placeholder="输入要查询的商品...">
	</div>
	<div class="uk-width-1-3">
		<button type="submit" style="height: 40px"
			class="uk-button uk-button-primary uk-width-1-1">搜索</button>
	</div>
</div>
