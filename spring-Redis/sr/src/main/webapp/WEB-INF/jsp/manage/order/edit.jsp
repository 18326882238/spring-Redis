<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/style.css"/>
    <script type="text/javascript" src="/tea/static/manage/js/libs/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.min.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/app/order/order-edit.js"></script>
    <script>var path = "${pageContext.request.contextPath}"</script> 
	<style type="text/css">
		 #myFrom td{
			padding-left: 20px;
		} 
		#myFrom .tableleft{
			width:150px; 
			text-align: right;
			padding-right: 20px;
		}
		#myFrom .last td{
			padding-left: 200px;
		}
		#myFrom .last td button {
			width: 100px;
		}
	</style>
</head>
<body>
<form action="/tea/system/order/updateStatus" method="post" class="definewidth m20" id='myFrom'>
	<table class="table table-bordered table-hover ">
		<tr>
			<td class="tableleft">订单号</td>
			<td id='ordernomber'>${detailAv.ordernomber}</td>
			<td><input type="hidden" value="${detailAv.id}" name="id"/></td>
		</tr>
		<tr>
			<td class="tableleft">预约姓名</td>
			<td>${detailAv.name}</td>
		</tr>
		<tr>
			<td class="tableleft">预约电话</td>
			<td>${detailAv.phone}</td>
		</tr>
		<tr>
			<td class="tableleft">预约时间</td>
			<td>${detailAv.serviceDate} ${detailAv.serviceTime}</td>
		</tr>
		<tr>
			<td class="tableleft">预约时长</td>
			<td>${detailAv.timeLen}</td>
		</tr>
		<tr>
			<td class="tableleft">预约人数</td>
			<td>${detailAv.num}</td>
		</tr>
		<tr>
			<td class="tableleft">预约环境</td>
			<td>${detailAv.environment}</td>
		</tr>
		<tr>
			<td class="tableleft">预约茶品</td>
			<td>${detailAv.tea}</td>
		</tr>
		<tr>
			<td class="tableleft">价格</td>
			<td style="border: thin solid #cccc;">${detailAv.price}</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		 <tr>
			<td class="tableleft">茶艺师姓名</td>
			<td>
			 	<c:if test="${detailAv.serviceStatus == 6}">
	        		${detailAv.teaName}
	        	</c:if>
	        	<c:if test="${detailAv.serviceStatus != 6}">
					<select data-teaName="${detailAv.teaName}" id="teaSpecia" name="appoinid">
						<c:if test="${!empty teaNameList}">
							<c:forEach var="t" items="${teaNameList}">
								<option value="${t.id}">${t.teaName}</option>
							</c:forEach>
						</c:if>
					</select>
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="tableleft">茶艺师电话</td>
			<td>${detailAv.teaPhone}</td>
		</tr>
		<tr>
			<td class="tableleft">服务时间</td>
			<td>${detailAv.serviceDate} ${detailAv.serviceTime}</td>
		</tr>
		<tr>
			<td class="tableleft">服务结束时间</td>
			<td>${detailAv.serviceDate} ${detailAv.endTime}</td>
		</tr>
		<tr>
			<td class="tableleft">服务根据规则最晚时间</td>
			<td>${detailAv.serviceDate} ${detailAv.lastEndTime}</td>
		</tr>
		<tr>
	        <td class="tableleft">服务状态</td>
	        <td>
	        	<%-- <c:if test="${detailAv.serviceStatus == 0 || detailAv.serviceStatus == 1}">已预约/未分配茶艺师</c:if>
   				<c:if test="${detailAv.serviceStatus==2}">已指定茶艺师</c:if>
   				<c:if test="${detailAv.serviceStatus==3}">服务中</c:if>
   				<c:if test="${detailAv.serviceStatus==6}">服务成功</c:if>
   				<c:if test="${detailAv.serviceStatus==9}">茶艺师已接受订单</c:if> --%>
	        	 <c:if test="${detailAv.serviceStatus == 6}">
	        		服务成功
	        	</c:if>
	        	<c:if test="${detailAv.serviceStatus != 6}">
		        	<select data-value="${detailAv.serviceStatus}" name="status">
		        		<option value="0">已预约/未分配茶艺师</option>
		        		<!-- <option value="1">已拨打电话、未指定服务人员</option> -->
					    <option value="2">已指定茶艺师</option>
					    <option value="3">服务中</option>
					   	<!--  <option value="4">已赴约</option> -->
					   	<!--  <option value="5">服务关闭</option>   -->
					    <option value="6">服务成功</option>  
					    <!-- <option value="7">已经付款</option>
					    <option value="8">预约失败</option>   -->
					    <option value="9">茶艺师已接受订单</option>    
		        	</select>
	        	</c:if>
        	</td>
        </tr>
		<tr>
			<td class="tableleft">服务位置</td>
			<td>${detailAv.address}</td>
		</tr>
		<tr class="last">
	        <td colspan="2">
	        	<c:if test="${detailAv.serviceStatus == 6}">
	        		<button type="button" class="btn btn-primary" type="button" id="btnValue" >返回</button>
	        	</c:if>
	        	<c:if test="${detailAv.serviceStatus != 6}">
	        		<button type="submit" class="btn btn-primary" type="button" id="btnValue" >保存</button>
	        	</c:if>
	            
	        </td>
	    </tr>
	</table>
</form>
</body>
</html>
