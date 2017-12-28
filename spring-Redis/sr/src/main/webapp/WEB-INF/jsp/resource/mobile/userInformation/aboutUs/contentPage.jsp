<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<script>
		var basePath = "${pageContext.request.contextPath}"
	</script>
<%-- 	<script src="<c:url value="/static/backstage/js/jquery.1.11.0.min.js" />"></script> --%>
    <meta charset="UTF-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta content="telephone=no" name="format-detection" />
    <style type="text/css">
    	html,span{
            margin: 0;
            padding: 0;
            width:auto;
            background-color: #f9f1e1;
			font-family:"微软雅黑";
			text-align:center;
			
        }
        img{max-width:100%};
    </style>
</head>
<body>
${contentData}
<script>
window.onload = function () {
    var width = window.screen.width;
    var img = document.getElementsByTagName("img");
    for (var i = 0; i < img.length; i++) {
        img[i].style.width = width + 'px';
    }
}
	

</script>
</body>
</html>
