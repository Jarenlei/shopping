<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%response.setStatus(200);%>
 
<%
        Exception ex = (Exception) request.getAttribute("Exception");
		
%>
 
<!DOCTYPE html>
<html>
<head>
    <title>Exception - 异常信息</title>
</head>
<body>
    <h2>Exception - 异常信息.</h2>
</body>
</html>