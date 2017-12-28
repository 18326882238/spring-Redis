<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商城APP下载</title>
    <style>
     body {
            background-color: #4F7AAF;
            font-size: 62.5%;
            padding: 0;
            margin: 0;
        }

        img {
            max-width: 100%;
			border:none;
        }

        p {
            color: #ffffff;
            text-align: center;
        }

        .logo,.title{
            width: 8rem;
			width:120px;
            position: relative;
            top: 0;
            left: 46%;
        }
		.scale{
			-webkit-transform: scale(.8);
		}
        #download{
            width: 10rem;
			width:160px;
            position: relative;
            top: 57%;
            left: 16%;
        }
        .download img{
            margin-top: 1rem;
			margin-top:16px;
        }
        #content{
            background-image: url("../static/resource/download/img/background.png");
            background-position: center center;
            background-clip: border-box;
            background-size: cover;
            height: 35rem;
			height:530px;
            background-repeat: no-repeat;
        }
        @media only screen and (min-width:320px) and (max-width: 480px){
            #header,.title,p{
                display: none;
            }
            #content{
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                background: url("../static/resource/download/img/banner.png") no-repeat;
                background-size: cover;
            }
           #download{
                padding-top: 0rem;
                padding-left: 0rem;
                position: absolute;
                width: 42%;
                top: 82%;
                left:28% ;
            }
        }
        
    </style>
<body>
<div id="header">
    <div class="logo">
        <img src="<c:url value="/static/resource/download/img/logo.png"/>">
    </div>
    <div class="title">
        <img src="<c:url value="/static/resource/download/img/title.png"/>">
    </div>
    <p>下载“慧联客商城 APP”</p>
</div>
<div id="content">
    <div id="download">
    	<%-- <a href="https://appsto.re/cn/vktT4.i"><img src="<c:url value="/static/resource/download/img/download_ios.png"/>" /></a> --%>
		<a href="<c:url value="/app/get-web-app/Shop.apk"/>"><img src="<c:url value="/static/resource/download/img/download_andorid.png"/>" /></a>
    </div>
</div>
<script>
var height = document.body.scrollHeight;
var width = document.body.scrollWidth;
var download = document.getElementById("download");
var content = document.getElementById("content");
if(height<481){
    download.className = "scale";
    download.style.top = 80 +"%";
    download.style.left = 30 +"%";
}else if(width>1366){
	download.style.top = 61 + "%";
	download.style.left = 20 + "%";
}
</script>
</body>
</html>
