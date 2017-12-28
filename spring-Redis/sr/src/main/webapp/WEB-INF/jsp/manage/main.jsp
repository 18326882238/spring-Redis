<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="/tea/static/manage/css/app/main.css"/>
	
	<script>var path = "${pageContext.request.contextPath}"</script> 
	<script type="text/javascript" src="/tea/static/manage/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="/tea/static/manage/js/app/Utils.js"></script>
	<script type="text/javascript" src="/tea/static/manage/js/app/main.js"></script>
</head>
<div id="top">
	<img alt="logo" src="static/manage/image/Icon.png">
	<div>
		<p>欢迎您，${sessionScope.user.username}<span id='time'></span></p>
		<button type="button" class="btn btn-info btn-sm" id='clear_datas'>清理缓存</button>
	</div>
</div>
<div id="left">
	<ul class="nav navbar-nav">
      	 <c:forEach var="menu" items="${mgtShowVo.list}">
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu.name}<span>▼</span></a>
	            <ul>
		           	<c:forEach var="menulist" items="${menu.list}">
		           		<li>
		           			<a data-url='/${menulist.url}' target="showright">${menulist.name}</a>
		               	</li>
		            </c:forEach>
	            </ul>
        	</li>
        </c:forEach>
	</ul>
</div>
<div id="middle">
	<iframe src="" scrolling="auto" width="100%" id="myIframe"></iframe>
</div> 
</html>
