<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
   
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/manage/css/bootstrap.css"/>"/>
    <script type="text/javascript" src="<c:url value="/static/manage/js/jquery-1.9.1.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/static/manage/js/bootstrap.js"/>"></script>
     <link rel="stylesheet" type="text/css" href="<c:url value="/static/manage/css/style.css"/>"/>                    
	<script type="text/javascript" src="<c:url value="/static/manage/js/user/user-index.js"/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/static/manage/css/style.css"/>"/>
	<script>var path = "${pageContext.request.contextPath}"</script> 
</head>
<body>

<%-- <form class="form-inline definewidth m20" action="<c:url value="/system/account/aueryUserByName"/>" method="post" id="myform" >
     关键字：
    <input name="keyword" id="rolename" class="abc input-default" />
    <input type="hidden" value="${usvo.currentPage}" id="hiddenPage" name="page"/>
    <input type="hidden" value="10" id="hiddenSize" name="pageSize"/>
    <input type="hidden" value="2" id="hiddenQuan"name="premission" />
    <button type="button" class="btn btn-primary" id="btnQuery" onclick ="check();">查询</button>&nbsp;&nbsp;<button type="button" class="btn btn-success" id="adduser">新增用户</button>&nbsp;&nbsp;<button type="button" class="btn btn-success" onclick="window.history.go(-1);">返回上一级</button>
</form> --%>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
		  <th>编号</th>
		  <th>imgUrl</th>
		  <th>name</th>
		  <th>url</th>
		  <th>操作</th>
	</tr>
    </thead>
	     	<c:if test="${!empty usvoList }">
			    		<c:forEach var="user" items="${usvoList}">
			    		<tr>
			    		   <c:choose>
			    		    <c:when test="${!empty user.userno}">
			    		    <td>${user.userno}</td>
			    		    </c:when>
			    		    <c:otherwise>
			    		       <td>未知</td>
			    		    </c:otherwise>
			    		  </c:choose>
				    		
				    		
				    		<c:choose>
			    		    <c:when test="${!empty user.username}">
			    		    <td>${user.username}</td>
			    		    </c:when>
			    		    <c:otherwise>
			    		       <td>未知</td>
			    		    </c:otherwise>
			    		  </c:choose>
				    		
				    		
				    		<c:choose>
			    		    <c:when test="${!empty user.phone}">
			    		    <td>${user.phone}</td>
			    		    </c:when>
			    		    <c:otherwise>
			    		       <td>未知</td>
			    		    </c:otherwise>
			    		  </c:choose>
				    	
				    	
				    	<c:choose>
			    		    <c:when test="${!empty user.status}">
			    		    <c:if test="${user.status==1}"><td>空闲</td></c:if>
				    		<c:if test="${user.status==2}"><td>已指定服务</td></c:if>
				    		<c:if test="${user.status==3}"><td>请假</td></c:if>
				    		<c:if test="${user.status==4}"><td>离职</td></c:if>
			    		    </c:when>
			    		    <c:otherwise>
			    		       <td>未知</td>
			    		    </c:otherwise>
			    		  </c:choose>
			    		  <td><a href="<c:url value="/system/account/queryDetaiel?id=${user.id}"/>">编辑</a></td>
				    	</tr>
			</c:forEach>
			</c:if>
			
</table>
<div class="inline pull-right page">
         <span>共${usvo.totalPage}页/第${usvo.currentPage}页/总条数${usvo.allRow}</span>
         
	     <span><a href="<c:url value="/system/account/queryUser?pageSize=10&page=1&premission=2"/>">首页</a></span>
	     <c:choose>
		  <c:when test="${usvo.currentPage==1}">
		    已是第一页
		  </c:when>
		  <c:otherwise>
		  <span><a href="<c:url value="/system/account/queryUser?&pageSize=10&page=${usvo.currentPage-1}&premission=2"/>">上一页</a></span>
		  </c:otherwise>
		  </c:choose> 
	     <c:choose>
	     <c:when test="${usvo.currentPage==usvo.totalPage}">
	     	已是最后页
	     </c:when>
	     <c:otherwise>
	      <span><a href="<c:url value="/system/account/queryUser?pageSize=10&page=${usvo.currentPage+1}&premission=2"/>">下一页</a></span>
	     </c:otherwise>
	     </c:choose>
	      <span><a href="<c:url value="/system/account/queryUser?&pageSize=10&page=${usvo.totalPage}&premission=2"/>">尾页</a></span>
</div>
</body>
</html>
