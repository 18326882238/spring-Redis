 $(function(){

	 $("#editor").click(function(){
			var curWwwPath=window.document.location.href;
			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
			var data = localhostPaht+"/queryDetaiel?id="+$("#editor").val();
			window.location.href=data;
	 });
		$("#adduser").click(function(){

			var curWwwPath=window.document.location.href;
			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
			var data = localhostPaht+"/lodingAdmin";
			window.location.href=data;
	 });
		function check(){
		
			 var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");  //非法字符
			  if ($("#rolename").val()==null||$("#rolename").val()==""){
				  alert("查询条件不能为空！");
				  $("#rolename").focus();
				  return false
				  }else if(pattern.test($("#rolename").val())){
					  alert("查询条件含有非法字符，请重新输入");
					  $("#rolename").focus();
					  return false;  
				  }else{
					  document.getElementById("myform").submit();
				  }
			 }
 
 })
	 
	
 
	 
 