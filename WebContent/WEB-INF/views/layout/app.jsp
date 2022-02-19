<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>HappyBirthday Ai Furihata</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
        <link rel="stylesheet" href="<c:url value='/css/letter.css' />">
        <link rel="stylesheet" href="<c:url value='/css/flickity.css' />" media="screen">
        <script src="<c:url value='/js/flickity.pkgd.min.js' />"></script>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
            </div>
            <div id="content">
                ${param.content}
            </div>
            <div id="footer">
            </div>
        </div>
    </body>
</html>