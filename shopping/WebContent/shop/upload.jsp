<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <link rel="stylesheet" href="${path}/resources/css/form-file.min.css" />
            <script language="javascript" src="${path}/resources/js/jquery-1.9.0.min.js"></script>
            <script language="javascript" src="${path}/resources/js/uikit.min.js"></script>
            <script language="javascript" src="${path}/resources/js/slideshow.min.js"></script>
            <script language="javascript" src="${path}/resources/js/slideshow-fx.min.js"></script>
            <script language="javascript" src="${path}/resources/js/autocomplete.min.js"></script>
<title>Insert title here</title>
<style>
        .file-input{
            color: red;
            font-size: 20px;
            font-family:FangSong;
        }
    </style>
</head>
<body>
		<div class="uk-container uk-container-center">
        <form action="${contextPath }/upFile"  class="uk-form uk-form-horizontal" method="post" enctype="multipart/form-data">
            <div class="uk-form-row">
                <label for="file-name" class="uk-form-label file-input">分享的文件名:</label>
                <div class="uk-form-controls">
                    <input id="file-name" name="fname" type="text" class="uk-form-width-medium">
                </div>
            </div>
            <div class="uk-form-row">
                <label for="file-intro" class="uk-form-label file-input">分享的文件介绍:</label>
                <div class="uk-form-controls">
                    <input id="file-intro" name="intro" type="text" class="uk-form-width-medium">
                </div>
            </div>
            <div class="uk-form-row uk-form-file uk-grid">
                <div class="uk-grid-width-1-3">
                    <label for="file-image" class="uk-form-label file-input">图片预览:</label>
                </div>
                <div class="uk-grid-width-2-3">
                <button class="uk-button">选择图片</button>
                <input id="file-image" type="file" name="file1">
                    </div>
            </div><br>

            <div class="uk-form-row uk-form-file uk-grid" style="margin-top: 5px">
                <div class="uk-grid-width-1-3">
                <label for="file-file" class="uk-form-label file-input">torrent文件</label>
                </div>
                <div class="uk-grid-width-2-3">
                <button class="uk-button">选择文件</button>
                <input id="file-file" type="file" name="file2">
                    </div>
            </div>

            <div class="uk-form-row uk-grid" style="padding:0 10px">
                <div class="uk-grid-width-1-2" style="width: 20%">
                    <input type="submit" value="提交">
                </div>
                <div class="uk-grid-width-1-2" style="width: 20%">
                    <input type="reset" value="取消">
                </div>
            </div>
        </form>
    </div>
</body>
</html>