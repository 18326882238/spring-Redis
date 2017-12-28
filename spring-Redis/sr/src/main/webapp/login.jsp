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
	
	<link rel="stylesheet" type="text/css" href="/static/manage/css/bootstrap.min.css"/>
    
    <script type="text/javascript" src="/static/manage/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		var basePath = "${pageContext.request.contextPath}"
	</script>
	 <style type="text/css">
  html,body{height:100%;overflow:hidden;}
  body,button, input, select, textarea,h1 ,h2, h3, h4, h5, h6 { font-family: Microsoft YaHei,'微软雅黑' , Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;}
  body{
  	padding: 0px;
    margin: 0px;
    line-height: 1.6;
    color: #222;
    font-size: 14px;
}
 /*globe 全局CSS*/
	.globe{
		height:100%;
		} 
/*header 头部CSS*/
	.header{
		width:100%;
		height:80px;
		background-color:#BAE4FF;
		} 
	 .form-signin {
            max-width:300px;
            padding: 19px 20px 20px;
            margin: 0 auto 10px 10px 6px;;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

}
   </style>
   <script type="text/javascript">
   function Cmd(){
       var ipt = document.getElementById("divbox").getElementsByTagName("input"); //查找divbox这个div里的所有文本框
       for(var i = 0; i < ipt.length; i++){ //循环
           if(ipt[i].value.length == 0){ //如果其中一个文本框没有填写
               alert("用户名或密码不能为空！"); //弹出提示
               ipt[i].focus(); //定位到没有填写的文本框
               return false; //返回false
           }
       }
       return true; //都已经填写，返回true
   }
   </script>
  </head>
  
  <body>
  
  <div class="globe" >
    <div class="header">
    </div>
    <div class="left" style="width:120px;height:286px;float:left;margin:80px 6px 20px 540px;"><img alt="" src="${basePath}/static/manage/image/adminioc.gif"></div>
    <div class="loginForm" style="width:50%;float:right;margin-top:40px;" id="divbox">
         <form role="form" id="myLoginForm" class="form-signin" action="account/loginUser" method="post">
          <h2 class="form-signin-heading">登录系统</h2>
          <input type="text" class="form-control" id="name"  placeholder="请输入名称" name="username" value=""/>
	      <input type="password" class="form-control" id="name" placeholder="请输登录密码" name="password" value=""/>
	      <p><button class="btn btn-large btn-primary" type="submit" onclick="return Cmd();">登录</button>&nbsp;&nbsp;&nbsp;<button class="btn btn-large btn-primary" type="reset" >取消</button></p>
      </form>
    </div>
</div>
  </body>
</html>
