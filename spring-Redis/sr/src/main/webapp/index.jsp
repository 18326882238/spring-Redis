<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	发布成功
</body>
<script src="/tea/static/manage/js/libs/jquery.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>    
<script>
window.onload=function(){
	//var strUrl="http://mp.cdsmartlink.com/tea/";
	var strUrl=window.document.location.href;
	var loginUrl="http://mp.cdsmartlink.com/tea/customer/conventional";
	var user_name="18306041750";
	var user_pwd="123456";
	requestDataByAjax(loginUrl,false,JSON.stringify({mobile_user_name:user_name,mobile_password:user_pwd}),"POST", function (result) {
		if(result.code == 1001){
			var reqUrl='http://mp.cdsmartlink.com/tea/website/pay/wechat/api/permission/sign';
			var access_token=result.message.access_token;
			reqUrl=reqUrl+"?access_token="+access_token+"&mobile_user_name=18306041750";
			
			requestDataByAjax(reqUrl,false,JSON.stringify({store_id:1,mobile_url:strUrl}),"POST", function (result) {
				if(result.code == 1001){
					wx.config({
		    			debug: false,    
		    			appId: result.message.appid,    
		    			timestamp: result.message.timestamp, 
		    			nonceStr: result.message.nonceStr, 
		    			signature: result.message.signature, 
		    			jsApiList: [ 
		    				'getLocation'
		    			]   
		    		});
		        	wx.ready(function () {
		        		wx.getLocation({
		        			success: function (res) {
		        				alert(JSON.stringify(res));
		        			},
		        			cancel: function (res) {
	        					alert('用户拒绝授权获取地理位置');
		        			}
		        		});
		        	});
		    	}
				else{
					alert("sign:"+result.code);
				}
			});
		}
		else{
			alert("login:"+result.code);
		}
	});
	
} 
 
function requestDataByAjax(url, isValidate, params, type, method){
    $.ajax({
        type: type,
        url: url,
        cache: false,
        async: false,
        data:{
            "parameter":params
        },
        success: function (result) {
           //回调函数解析数据
            method(result);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //window.location.href= 'newIndex.html';
            alert("错误：" + textStatus);
        }
    });
}
wx.error(function (res) {
  alert(res.errMsg);
});
</script>
</html>