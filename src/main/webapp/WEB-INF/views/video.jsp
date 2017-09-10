<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VIDEO - GEOIS</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="<spring:url value="/resources/js/main.js"/>" type="text/css"/>
</head>
<body>
<div class="container">

    <div class="row-fluid">
        <div class="col-xs-4">
            <img width="300" height="300" class="img-rounded"
                 src="http://${camera2}/cgi-bin/faststream.jpg?stream=half&amp;fps=15&amp;rand=COUNTER"/>
        </div>
        <div class="col-xs-4">
            <%--<video id="video"></video>--%>
            <%--<canvas id="canvas" width="300" height="300"></canvas>--%>
            <img width="300" height="300" class="img-rounded" src="http://${camera1}/mjpg/video.mjpg?COUNTER"/>

        </div>
        <div class="col-xs-4">
            ${camera3}
        </div>
    </div>

    <div class="row-fluid">
        <div class="col-xs-12">
            <video id='vide_4'
                   controls preload='none'
                   poster="https://media.w3.org/2010/05/sintel/poster.png"
                   src="https://media.w3.org/2010/05/sintel/trailer.mp4"></video>
        </div>
    </div>

</div>

<script type="text/javascript">
    var video = document.getElementById('video');
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.oGetUserMedia || navigator.msGetUserMedia;
    if (navigator.getUserMedia) {
        navigator.getUserMedia({video: true}, streamWebCam, throwError);
    }
    function streamWebCam(stream) {
        video.src = window.URL.createObjectURL(stream);
        video.play();
        video.width = 300;
        video.height = 300;
        video.style.width = "300px";
        video.style.height = "300px";
    }
    function throwError(e) {
        alert(e.name);
    }

</script>
</body>
</html>