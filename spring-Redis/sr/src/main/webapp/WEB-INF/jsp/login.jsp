<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>欢迎登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	
	<link rel="stylesheet" type="text/css" href="static/manage/css/libs/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="static/manage/css/app/login.css"/>
	<script type="text/javascript" src="static/manage/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="static/manage/js/app/login.js"></script>
  </head>
  <body>
	<div id='main'>
		<img alt='' title="" src="static/manage/image/adminioc.gif"/>
		<form action="account/loginUser" role="from" id='myLoginForm' method="post">
			<h2>登录系统</h2>
			<input type="text" id='name' placeholder="请输入名称" name='username'/>
			<input type="password" id='pwd' placeholder="请输入登录密码"  name="password"/>
			<button type="submit" class="btn btn-large btn-primary" id='submit'>登录</button>
			<!-- <button type="reset" class="btn btn-large btn-primary" id='reset'></button> -->
		</form>
	</div>
  </body>
</html>
