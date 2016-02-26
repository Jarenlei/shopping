<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
       <meta charset="utf-8" />
       <title>快乐购物网</title>
       <c:set var="path" value='<%="http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/shop"%>'></c:set>
    	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
    	<script language="javascript" src="${path}/resources/js/import.js"></script>
