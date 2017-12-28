<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/style.css"/>
    
    <script type="text/javascript" src="/tea/static/manage/js/libs/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/app/client-index.js"></script>
   
</head>
<body>
<form class="form-inline definewidth m20" action="/tea/system/client/queryByName" method="post" id="myform" >
     关键字：
    <input name="keyword" id="rolename" class="abc input-default" placeholder="请输入登录名"/>
   	<input type="hidden" value="${cusVo.currentPage}" id="hiddenPage" name="page"/>
    <input type="hidden" value="10" id="hiddenSize" name="pageSize"/>
    <button type="submit" class="btn btn-primary" id="btnQuery">查询</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
	    <tr>
	       <th>客户登录名</th>
	       <th>客户手机号</th>
	       <th>注册时间</th>
	       <th>是否有服务过</th>
	    </tr>
    </thead>
    <c:if test="${!empty cusList}">
    	<c:forEach var='u' items="${cusList}">
    		<tr>
    			<td>${u.username}</td>
    			<td>${u.phone}</td>
    			<td>${u.createTime}</td>
    			<td>
    				<c:if test="${u.serviceStatus==0}">否</c:if>
				    <c:if test="${u.serviceStatus==1}">是</c:if>
    			</td>
    		</tr>
    	</c:forEach>
    </c:if>
</table>
<div class="inline pull-right page">
	<span>共${cusVo.totalPage}页/第${cusVo.currentPage}页/总${cusVo.allRow}条数</span>
	<span>
		<a href="/tea/system/client/queryClient?pageSize=10&page=1">首页</a>
	</span>
	<span>
		<c:if test="${cusVo.currentPage == 1}"> 已是第一页</c:if>
		<c:if test="${cusVo.currentPage > 1}"> 
			<a href="/tea/system/client/queryClient?pageSize=10&page=${cusVo.currentPage - 1}">上一页</a>
		</c:if>
	</span>
	<span>
		<c:if test="${cusVo.currentPage == cusVo.totalPage}"> 已是最后一页</c:if>
		<c:if test="${cusVo.currentPage < cusVo.totalPage}"> 
			<a href="/tea/system/client/queryClient?pageSize=10&page=${cusVo.currentPage + 1}">下一页</a>
		</c:if>
	</span>
	<span>
		<a href="/tea/system/client/queryClient?pageSize=10&page=${cusVo.totalPage}">尾页</a>
	</span>
</div>
</body>
</html>
