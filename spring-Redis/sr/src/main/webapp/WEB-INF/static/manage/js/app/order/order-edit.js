$(function(){
	/*var dataValue = $('select').attr('data-value');
	var option = $('option');
	for(var i in option){
		if(dataValue == 0 || dataValue == 1){
			$(option[0]).attr('selected',"selected");
		}else if($(option[i]).val() == dataValue){
			$(option[i]).attr('selected',"selected");
		}
	}*/
	
	//茶艺师选择
	var teaSpecia = $('#teaSpecia').attr('data-teaName');
	var teaOption = $('#teaSpecia option');
	for(var i in teaOption){
		teaOption[i] = $(teaOption[i]);
		if(teaOption[i].text() == teaSpecia){
			teaOption[i].attr('selected',"selected");
		}
	}
	$('button[type=button]').click(function(){
		history.back(-1);
	});
	
});
/*$(document).ready(function(e) {
    		var strUrl = window.location.toString();
    		var id = strUrl .substr(strUrl .lastIndexOf("id")+3,strUrl .length-strUrl .lastIndexOf("id="));
   			 $("#btnValue").click(function (){
   				var status=$("#selProv option:selected").val();
   				var curWwwPath=window.document.location.href;
    			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
    			var data = localhostPaht+"/updateStatus";
   				 $.ajax({
   				     type: "post",
   				     data:{
				    	 "appoinid":id,
				    	 "status":status
				     },
   				     url:data ,
   				     dataType:"json",
   					 async:false,
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
   				});
			
    	});
		 */