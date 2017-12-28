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
    <script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.min.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/app/order/order-index.js"></script>
</head>
<body>
<form class="form-inline definewidth m20" action="/tea/system/order/queryByNomber" method="post" id="myform" >
     关键字：
    <input name="keyword" id="rolename" class="abc input-default" placeholder="请输入订单号"/>
   <%--  <input type="hidden" value="${av.currentPage}" id="hiddenPage" name="page"/> --%>
    <input type="hidden" value="${num}" id="pageName"/> 
    <input type="hidden" value="1" id="hiddenPage" name="page"/> 
    <input type="hidden" value="10" id="hiddenSize" name="pageSize"/>
    <button type="button" class="btn btn-primary" id="btnQuery" onclick ="check()">查询</button>
	<a class="btn btn-primary" href="/tea/system/order/queryOrderNumber?page=1&pageSize=10&type=app_finished" id="finished">已完成订单</a>	
	<a class="btn btn-primary" href="/tea/system/order/queryOrderNumber?page=1&pageSize=10&type=app_unfinished" id="unfinished">未完成订单</a>	
	<a class="btn btn-primary" href="/tea/system/order/queryOrder?page=1&&pageSize=10" id="all">全部</a>	
</form>

<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    	<tr>
       		 <th>用户名称</th>
	         <th>订单编号</th>
	         <th>服务状态</th>
	         <th width="60px">商品名称</th>
	         <th width="70px">预约日期</th>
	         <th>预约时长</th>
	         <th>预约人数</th>
	         <th>预约环境</th>
	         <th width="80px">服务价格</th>
	         <th>茶艺师</th>
	         <th>下单时间</th>
	         <th width="130px">服务地址</th>
	         <th width="30px">操作</th>
    	</tr>
    </thead>
    <c:if test="${!empty avList}">
    	<c:forEach var="u" items="${avList}">
    		<tr>
    			<td>${u.khname}</td>
    			<td>${u.ordernomber}</td>
    			<td>
    				<c:if test="${u.status == 0 || u.status == 1}">已预约/未分配茶艺师</c:if>
    				<%-- <c:if test="${u.status==1}">已拨打电话、未指定服务人员</c:if> --%>
    				<c:if test="${u.status==2}">已指定茶艺师</c:if>
    				<c:if test="${u.status==3}">服务中</c:if>
    				<%-- <c:if test="${u.status==4}">已赴约</c:if> --%>
    				<%-- <c:if test="${u.status==5}">服务关闭</c:if> --%>
    				<c:if test="${u.status==6}">服务成功</c:if>
    				<%-- <c:if test="${u.status==7}">已付款</c:if> --%>
    				<%-- <c:if test="${u.status==8}">预约失败</c:if> --%>
    				<c:if test="${u.status==9}">茶艺师已接受订单</c:if>
    			</td>
    			<td>${u.pname}</td>
    			<td>${u.odate}</td>
    			<td>${u.timeLen}</td>
    			<td>${u.num}</td>
    			<td>${u.environment}</td>
    			<td>${u.serviceprice}</td>
    			<td>${u.teachername}</td>
    			<td>${u.ordertime}</td>
    			<td>${u.orderaddress}</td>
    			<td>
    				<c:if test="${u.status != 6}">
    					<a href="/tea/system/order/queryDetaile?id=${u.aid}&teaId=2&status=1">编辑</a>
    				</c:if>
    				<c:if test="${u.status == 6}">
    					<a href="/tea/system/order/queryDetaile?id=${u.aid}&teaId=2&status=2">查看</a>
    				</c:if>
    			</td>
    		</tr>   		
    	</c:forEach>
    </c:if>
 </table>
<div class="inline pull-right page">
	<span>第${av.currentPage}页/共${av.totalPage}页/总${av.allRow}条数</span>
	<span>
		<a href="/tea/system/order/queryOrder?pageSize=10&page=1" class='homePage all'>首页</a>
		<c:if test="${!empty keyword}">
			<a href="/tea/system/order/queryByNomber?pageSize=10&page=1&keyword=${keyword}" class='homePage keyword'>首页</a>
		</c:if>
		<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=1&type=app_finished" class='homePage app_finished'>首页</a>
		<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=1&type=app_unfinished" class='homePage app_unfinished'>首页</a>
	</span>
	<span>
		<c:if test="${av.currentPage == 1}">已是第一页</c:if>
		<c:if test="${av.currentPage > 1}">
			<a href="/tea/system/order/queryOrder?pageSize=10&page=${av.currentPage - 1}" class="topPage all">上一页</a>
			<c:if test="${!empty keyword}">
				<a href="/tea/system/order/queryByNomber?pageSize=10&page=${av.currentPage - 1}&keyword=${keyword}" class="topPage keyword">上一页</a>
			</c:if>
			<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.currentPage - 1}&type=app_finished" class="topPage app_finished">上一页</a>
			<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.currentPage - 1}&type=app_unfinished" class="topPage app_unfinished">上一页</a>
		</c:if>
	</span>
	<span>
		<c:if test="${av.currentPage == av.totalPage}">已是最后一页</c:if>
		<c:if test="${av.currentPage < av.totalPage}">
			<a href="/tea/system/order/queryOrder?pageSize=10&page=${av.currentPage + 1}"  class="bottomPage all">下一页</a>
			<c:if test="${!empty keyword}">
				<a href="/tea/system/order/queryByNomber?pageSize=10&page=${av.currentPage + 1}&keyword=${keyword}"  class="bottomPage keyword">下一页</a>
			</c:if>
			<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.currentPage + 1}&type=app_finished"  class="bottomPage app_finished">下一页</a>
			<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.currentPage + 1}&type=app_unfinished"  class="bottomPage app_unfinished">下一页</a>
		</c:if>
	</span>
	<span>
		<a href="/tea/system/order/queryOrder?pageSize=10&page=${av.totalPage}"  class="lastPage all">尾页</a>
		<c:if test="${!empty keyword}">
			<a href="/tea/system/order/queryByNomber?pageSize=10&page=${av.totalPage}&keyword=${keyword}"  class="lastPage keyword">尾页</a>
		</c:if>
		<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.totalPage}&type=app_finished"  class="lastPage app_finished">尾页</a>
		<a href="/tea/system/order/queryOrderNumber?pageSize=10&page=${av.totalPage}&type=app_unfinished"  class="lastPage app_unfinished">尾页</a>
	</span>
</div>
</body>
</html>
