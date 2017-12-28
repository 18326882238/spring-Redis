$(function() {
	var that = null;
	var isText = function(attr,prompt,name){
		var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");  //非法字符
		var mobilereg = /^((13[0-9])|(15[^4,\D])|(17[0-9])|(18[0-9])|145|147)\d{8}$/;
		var attrText = attr.val();
		prompt.text('');
		if(pattern.test(attrText)){
			prompt.text('不能输入非法字符，如~!@#$^&*等');
			attr.focus(); 
			return false;
		}else{
			switch (name) {
				case '登录名':
					if(!attrText){
						prompt.text('请输入登录名');
						attr.focus(); 
						return false;
					}
					break;
				case '密码':
					if(!attrText){
						prompt.text('请输入密码');
						attr.focus(); 
						return false;
					}else if(attrText.length < 6){
						prompt.text('请输入至少6位以上字符');
						attr.focus(); 
						return false;
					}
					break;
				case '真实姓名':
					if(!attrText){
						prompt.text('请输入真实姓名');
						attr.focus(); 
						return false;
					}
					break;
				case '昵称':
					if(!attrText){
						prompt.text('请输入昵称');
						attr.focus(); 
						return false;
					}
					break;
				case '手机号码':
					if(!attrText){
						prompt.text('请输入手机号码');
						attr.focus(); 
						return false;
					}else if(!mobilereg.test(attrText)){
						prompt.text('您输入的手机不正确');
						attr.focus(); 
						return false;
					}
					break;
				case '星级':
					if(!attrText){
						prompt.text('请输入星级');
						attr.focus(); 
						return false;
					}
					break;
			}
		}
		return true;
	};
	//失去焦点时，判断值
	$('input').change(function(){
		that = $(this);
		var prText = that.parents('tr').find('td:first-child').text();
		isText(that,that.next(),prText);
	});
	//提交值
	$('#myForm').click(function(){
		that = $('input');
		var num = 0;
		for(var i = that.length;i >= 0 ;i--){
			var prText = $(that[i]).parents('tr').find('td:first-child').text();
			if(!isText($(that[i]),$(that[i]).next(),prText)){
				num++;
			}
		}
		return;
		/*alert(num);
		
		if(num > 0){
			alert(1);
			
		}
		*/
		 
		 
	});
});
/*$(document).ready(function(e) {
    	$("#selProv").change(function(){
    		var v=$("#selProv option:selected").val();
    		$("#pValue").val(v);
    	});
    	$("#selStatus").change(function(){
    		var v=$("#selStatus option:selected").val();
    		$("#textstaus").val(v);
    	});
    	 
        $("#check").click(function(){
        	var flag = false;//flag用于判断是否提交表单 
        	var isMobile=/^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/; //手机号码验证规则
        	
      		 if($("#textno").val() == ""){
      			alert( "茶艺师编号不能为空！");
      			$("#textno").focus(); 
      			return false;
      		 }else if($("#textname").val() == ""){
    				alert( "姓名不能为空！");
    				$("#textname").focus(); 
    				return false;
    			}else if($("#textstaus").val() == ""){
    				alert( "状态不能为空！");
    				$("#textstaus").focus(); 
    				return false;
    			}else if($("#textstatr").val() == ""){
    				alert( "茶艺师级别不能为空！");
    				$("#textstatr").focus(); 
    				return false;
    			}else if($("#pwd").val() == ""){
    				alert( "密码不能为空！");
    				$("#pwd").focus(); 
    				return false;
    			}else if($("#textphone").val()==""){
    				alert( "手机号不能为空！");
    				$("#textphone").focus(); 
    				return false;
    			}else if(!isMobile.test($("#textphone").val())){
    				 alert('请输入有效的手机号码！'); 
    				 $("#textphone").focus(); 
    		           return false; 
    			}else if ($('select').val() == null || $('select').val() == " ") {
    			    alert("亲，您还为选择状态或权限！");
    			    return false; 
    			}else if(pattern.test($("#textno").val())||pattern.test($("#pwd").val())||pattern.test($("#textname").val())||pattern.test($("#txtnickname").val())){
    				alert("亲，输入项含有非法字符，如：~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（），请重新输入！");
    			}else{
    				var messagerInfor = confirm('确定要添加吗?');
    				if(messagerInfor==true){
    					var curWwwPath=window.document.location.href;
    	    			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
    	    			var data = localhostPaht+"/addAdmin";
    					 $.ajax({
    					     type: "post",
    					     url: data,
    					     dataType:"json",
    					     data:$("#yourformid").serialize(),
    						 async:false,
    					     success: function(data){
    					    	 var jsonData = data.code; 
    					    	 if (jsonData>0) {
    					    		 alert("添加成功");
    					    		 }
    					    	 else if(jsonData=="nomber not empty!"){
    					    		 alert("编号已存在");
    					    	 }else if(jsonData=="username not empty!"){
    					    		 alert("用户已存在");
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
   */