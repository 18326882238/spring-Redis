<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/libs/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/tea/static/manage/css/app/user-add.css"/>
    
    <script type="text/javascript" src="/tea/static/manage/js/libs/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="/tea/static/manage/js/libs/bootstrap.min.js"></script>
 	<script type="text/javascript" src="/tea/static/manage/js/app/user-add.js"></script>
</head>
<body>
<form action="" method="post" class="definewidth m20" id="myForm">
	<table class="table table-bordered table-hover definewidth m10">
		<tr>
			<td>茶艺师编号</td>
			<td>
				<input type="text" readonly="readonly"/>
				<small>${exceptionMessage}</small>
			</td>
		</tr>
		<tr>
        	<td>登录名</td>
        	<td>
        		<input type="text" name="username" placeholder="请输入登录名"/>
        		<small>${exceptionusername}</small>
        	</td>
    	</tr>
    	<tr>
        	<td>密码</td>
        	<td>
        		<input type="password" name="password" placeholder="请输入密码"/>
        		<small></small>
        	</td>
    	</tr>
   	 	<tr>
	        <td>真实姓名</td>
	        <td>
	        	<input type="text" name="yourname" placeholder="请输入真实姓名"/>
	        	<small></small>
	        </td>
	    </tr>
	    <tr>
	        <td>昵称</td>
	        <td>
	            <input type="text" placeholder="请输入昵称"/>
	            <small></small>
	        </td>
	    </tr>
     	<tr>
     	<tr>
	        <td>手机号码</td>
	        <td>
	        	<input type="tel" placeholder="请输入手机号码"/>
	        	<small></small>
	        </td>
	    </tr>
	    <tr>
        	<td>状态</td>
	        <td>
		        <select>
	               <option value="1">空闲</option> 
	               <option value="2">已指定服务</option> 
	               <option value="3">请假</option>  
	               <option value="4">离职</option>
				</select> 
				<small></small>
	        </td>
	   	</tr>
	   	<tr>
	        <td>星级</td>
	        <td>
	        	<input type="text" placeholder="请输入星级"/>
	        	<small></small>
	        </td>
	   	</tr>  
	    <tr>
	    	<td>选择权限</td>
		    <td>
		        <select>  
					<option value ="1">管理员</option>  
					<option value ="2">茶艺师</option>  
					<option value="3">成员</option>  
					<option value="4">双重身份：管理员与茶艺师</option>
					<option value="5">销售</option>
				</select>
				<small></small> 
		    </td>
	    </tr>
	    <tr>
	    	<td></td>
	    	 <td>
	            <button type="submit" class="btn btn-primary">保存</button>
	            <button type="reset" class="btn btn-success">重置</button>
	        </td>
	    </tr>
	</table>
</form>
<%-- <form action="" method="" class="definewidth m20" id="yourformid" >
<table class="table table-bordered table-hover definewidth m10">
     <tr>
        <td width="10%" class="tableleft">茶艺师编号</td>
        <td><input type="text" name="yourno" id="textno"/><small>${exceptionMessage}</small></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft" id="txtln">登录名</td>
        <td><input type="text" name="username"/><small>${exceptionusername}</small></td>
    </tr>
    <tr>
        <td class="tableleft">密码</td>
        <td><input type="password" name="password" id="pwd"/></td>
    </tr>
    <tr>
        <td class="tableleft">真实姓名</td>
        <td><input type="text" name="yourname" id="textname"/></td>
    </tr>
     <tr>
        <td class="tableleft">状态</td>
        <td><input type="hidden" name="yourstatus" id="textstaus"/>
         <select id="selStatus">
               <option value="1" selected ="selected">空闲</option> 
               <option value="2">已指定服务</option> 
               <option value="3">请假</option>  
               <option value="4">离职</option>
			   </select> 
        </td>
    </tr>
     <tr>
        <td class="tableleft">星级</td>
        <td><input type="text" name="yourstatr" id="textstatr"/></td>
    </tr>
    <tr>
        <td class="tableleft">手机号码</td>
        <td><input type="text" name="yourphone" id="textphone"/></td>
    </tr>
    <tr>
        <td class="tableleft">昵称</td>
        <td>
            <input type="text" name="yournick" value="" id="txtnickname"/>
        </td>
    </tr>
    <tr>
    <td class="tableleft">选择权限</td>
    <td>
        <select id="selProv">  
		<option value ="1" selected ="selected">管理员</option>  
		<option value ="2">茶艺师</option>  
		<option value="3">成员</option>  
		<option value="4">双重身份：管理员与茶艺师</option>
		<option value="5">销售</option>
	</select> 
	<input type="hidden" name="premssion" value="" id="pValue" />   
    </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="button" class="btn btn-primary" id="check">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid" onclick="javascript:history.back(-1);">返回列表</button>
        </td>
    </tr>
</table>
</form> --%>
</body>
</html>