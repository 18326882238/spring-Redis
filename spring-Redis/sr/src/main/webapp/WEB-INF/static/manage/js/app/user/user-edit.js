$(document).ready(function(e) {
    		var strUrl = window.location.toString();
    		var id = strUrl .substr(strUrl .lastIndexOf("id")+3,strUrl .length-strUrl .lastIndexOf("id="));
    		$("#userId").val(id );
    		$("#btnValue").click(function(){
    			 var flag = false;//flag用于判断是否提交表单 
    	    		//var isInt=/^(\+|-) \d+$;//正整数
    	    		 var reg = /^\d+$/;//数字
    	    		 var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");  //非法字符
    	    		 if(reg.test($("#txtStars").val())||$("#txtStars").val()<0){
    	    			 alert("状态必须是数字！");
    	    			return false;
    	    		}
    	    		else if($("#txtarea").val()!=""&&pattern.test($("#txtarea").val())){
    	    			alert("含有非法字符!");
    	    			return false;
    	    		}else{
    	    			var id = $("#userId").val();
    	    			var status = $("#selProv option:selected").val();
    	    			var stars= $("#txtStars").val();
    	    			var desc=$("#txtarea").val();
    	    			var messagerInfor = confirm('确定要修改吗?');
    	    			if (messagerInfor == true) {
    	    			var curWwwPath=window.document.location.href;
    	    			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
    	    			var data = localhostPaht+"/updateDetaiel";
    	    			 url = encodeURI(data); // 提交数据URL通过encodeURI(URIstring)编码
    	    			 $.ajax({
    	   				     type: "post",
    	   				     data:{
    	   				    	 "id":id,
    	   				    	 "status":status,
    	   				    	 "stars":stars,
    	   				    	 "desc":desc
    	   				     },
    	   				     url:url,
    	   				     dataType:"json",
    	   				  	 contentType: "application/x-www-form-urlencoded;charset=utf-8",
    	   					 async:true,
    	   				     success: function(data){
    	   				    	 var jsonData = data.code;  
    	   				    	 if (jsonData>0) {
    	   				    		 alert("修改成功");
    	   				    		 location.reload();
    	   				    		 }else{
    	   	   			    			 alert("修改失败！");
    	   	   			    		 }
    	   			    	  },
    	   				     error: function(XMLHttpRequest, textStatus, errorThrown){
    	   				    	 if(XMLHttpRequest.status!=200){
    	   				    		 alert("服务器异常！");
    	   				    	 }
    	   				    	  }
    	   				     });
    	    			 }
    	    		}
    	    		 return flag;	
    		});
    	}); 