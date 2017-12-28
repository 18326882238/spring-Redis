<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title>茶艺师列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
   	<link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/style.css"/>
    
    <script type="text/javascript" src="/tea/static/manage/js/libs/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.min.js"></script> 
	<script type="text/javascript" src="/tea/static/manage/js/app/user-index.js"></script> 
</head>
<body>

<form class="form-inline definewidth m20" action="/tea/system/account/aueryUserByName" method="post" id="myform" >
     关键字：
    <input name="keyword" id="rolename" class="abc input-default" placeholder="请输入茶艺师姓名"/>
    <input type="hidden" value="${usvo.currentPage}" id="hiddenPage" name="page"/>
    <input type="hidden" value="10" id="hiddenSize" name="pageSize"/>
    <input type="hidden" value="2" id="hiddenQuan"name="premission" />
    <button type="submit" class="btn btn-primary" id="btnQuery">查询</button>
    &nbsp;&nbsp;<button type="button" class="btn btn-success" id="adduser">新增用户</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
	    <tr>
		  <th>员工编号</th>
		  <th>茶艺师姓名</th>
		  <th>茶艺师联系方式</th>
		  <th>茶艺师状态</th>
		  <th>操作</th>
		</tr>
    </thead>
    
    <c:if test="${!empty usvoList}">
    	<c:forEach var='user' items="${usvoList}">
    		<tr>
    			<td>${user.userno}</td>
    			<td>${user.username}</td>
    			<td>${user.phone}</td>
    			<td>
   					<c:if test="${user.status==1}">空闲</c:if>
	    			<c:if test="${user.status==2}">已指定服务</c:if>
	    			<c:if test="${user.status==3}">请假</c:if>
	    			<c:if test="${user.status==4}">离职</c:if>
	    		</td>
    			<td><a href="/tea/system/account/queryDetaiel?id=${user.id}">编辑</a></td>
    		</tr>
    	</c:forEach>
    </c:if>
</table>

<div class="inline page">
	<span>共${usvo.totalPage}页/第${usvo.currentPage}页/总${usvo.allRow}条数</span>
	<span>
		<a href="/tea/system/account/queryUser?pageSize=10&page=1&premission=2">首页</a>
	</span>
	<span>
		<c:if test="${usvo.currentPage == 1}">已是第一页</c:if>
		<c:if test="${usvo.currentPage > 1}">
			<a href="/tea/system/account/queryUser?&pageSize=10&page=${usvo.currentPage - 1}&premission=2">上一页</a>
		</c:if>
	</span>
	<span>
		<c:if test="${usvo.currentPage == usvo.totalPage}">已是最后一页</c:if>
		<c:if test="${usvo.currentPage < usvo.totalPage}">
			<a href="/tea/system/account/queryUser?pageSize=10&page=${usvo.currentPage + 1}&premission=2">下一页</a>
		</c:if>
	</span>
	<span>
		<a href="/tea/system/account/queryUser?&pageSize=10&page=${usvo.totalPage}&premission=2">尾页</a>
	</span>
</div>
</body>
</html>
