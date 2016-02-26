<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
        <head>
            <meta charset="utf-8" />
            <title>快乐购物网</title>
            <c:set var="path" value='<%="http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/shop"%>'></c:set>
            <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
            <link rel="stylesheet" href="${path}/resources/css/uikit.min.css" />
            <link rel="stylesheet" href="${path}/resources/css/slideshow.min.css" />
            <link rel="stylesheet" href="${path}/resources/css/slidenav.min.css" />
            <link rel="stylesheet" href="${path}/resources/css/dotnav.min.css" />
            <link rel="stylesheet" href="${path}/resources/css/autocomplete.min.css" />
            <script language="javascript" src="${path}/resources/js/jquery-1.9.0.min.js"></script>
            <script language="javascript" src="${path}/resources/js/uikit.min.js"></script>
            <script language="javascript" src="${path}/resources/js/slideshow.min.js"></script>
            <script language="javascript" src="${path}/resources/js/slideshow-fx.min.js"></script>
            <script language="javascript" src="${path}/resources/js/autocomplete.min.js"></script>
            <script language="javascript">
                $(function () {
                })
            </script>
            <style type="text/css">
                .my-dropdown {
                    left: 100%;
                    top: -5px;
                    width: 300%;
                }
            </style>
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

                <div id="main" class="uk-grid uk-text-large uk-panel-box uk-panel-box-primary" style="margin-top: 15px;border-top:1px solid #333">
                    <%@include file="main.jsp" %>
                </div>

                <div id="shop-commodity-images uk-block" style="margin-top:15px;border-top:1px solid #333">
                    <div class="uk-grid uk-panel-box-primary" style="padding-top:10px">
                        <div class="uk-width-1-6">
                            <div class="uk-panel uk-text-justify">
                                <h3 class="uk-panel-title"><i class="uk-icon-*"></i> 最新巨优惠会场</h3>
                            </div>
                        </div>
                        <div class="uk-width-5-6">
                            <ul class="uk-thumbnav uk-grid-width-1-5">
                                <c:forEach items="${webDto.imageList}" var="imgs">
                                    <li class="uk-active">
                                        <a href="#"><img src="${path}/resources/featurebanner/${imgs}"></a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>

                <div id="shop-commodity-list" style="margin-top:15px;border-top:1px solid #333">
                    <%@include file="commodity.jsp" %>
                </div>
            </div>
        </body>
        </html>
