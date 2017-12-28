<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/manage/css/bootstrap.css"/>"/>
    <script type="text/javascript" charset="utf-8" src="<c:url value="/static/manage/js/jquery-1.9.1.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/static/manage/js/bootstrap.js"/>"></script>
     <script type="text/javascript" src="<c:url value="/static/manage/js/user/user-edit.js"/>"></script>
</head>
<body>
<form action="" method="post" class="definewidth m20" id="myform">
<input type="hidden" name="id" value="${u.id}" id="userId" />
    <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">登录名</td>
            <td>${userdetaileVo.username}</td>
        </tr>
        <tr>
            <td class="tableleft">茶艺师联系方式</td>
            <td>${userdetaileVo.teaphone}</td>
        </tr>
        <tr>
            <td class="tableleft">真实姓名</td>
            <td>${userdetaileVo.teaname}</td>
        </tr>
        <tr>
            <td class="tableleft">茶艺师编号</td>
            <td>${userdetaileVo.userno}</td>
        </tr>
         <tr>
            <td class="tableleft">茶艺师星级</td>
            <td><input type="text" name="text" value="${userdetaileVo.stars}" id="txtStars"/></td>
        </tr>
         <tr>
            <td class="tableleft">茶艺师简介</td>
            <td><textarea  name="text" id="txtarea">${userdetaileVo.teadesc}</textarea></td>
        </tr>
         <tr>
            <td class="tableleft">茶艺师服务次数</td>
             <c:choose>
                <c:when test="${userdetaileVo.count==0}">
               	 <td>未服务</td>
                </c:when>
                <c:otherwise><td>${userdetaileVo.count}</td></c:otherwise>
                
            </c:choose>
        </tr>
         <tr>
            <td class="tableleft">茶艺师是否登录</td>
            <c:choose>
                <c:when test="${!empty userdetaileVo.token}">
                <td>已登录</td>
                </c:when>
                <c:otherwise><td>未登录</td></c:otherwise>
            </c:choose>
            
        </tr>
        <tr>
            <td class="tableleft">茶艺师状态</td>
            <td class="tableleft"> 
            <c:choose>
              <c:when test="${!empty userdetaileVo.status}">
               <c:if test="${userdetaileVo.status==1}">
               <select id="selProv">
               <option value="${userdetaileVo.status}">空闲</option> 
                <option value="2">已指定服务</option>  
			    <option value="3">请假</option>  
			    <option value="4">离职</option>
			    </select>  
               </c:if>
               <c:if test="${userdetaileVo.status==2}">
               <select id="selProv">
                <option value="${userdetaileVo.status}">已指定服务</option> 
               <option value="1">空闲</option> 
               <option value="3">请假</option>  
			   <option value="4">离职</option> 
			   </select>
               </c:if>
               <c:if test="${userdetaileVo.status==3}">
               <select id="selProv">
                <option value="${userdetaileVo.status}">请假</option>  
               <option value="1">空闲</option> 
               <option value="2">已指定服务</option> 
			   <option value="4">离职</option> 
			   </select>
               </c:if>
               
               <c:if test="${userdetaileVo.status==4}">
               <select id="selProv">
               <option value="${userdetaileVo.status}">离职</option>
               <option value="1">空闲</option> 
               <option value="2">已指定服务</option> 
               <option value="3">请假</option>  
			   </select> 
			   </c:if>
              </c:when>
                <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
        </tr>
        <tr>
            <td class="tableleft"></td>
            <td>
                <button type="button" class="btn btn-primary" type="button" id="btnValue">保存</button>&nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid" onclick="javascript:history.back(-1);">返回列表</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
