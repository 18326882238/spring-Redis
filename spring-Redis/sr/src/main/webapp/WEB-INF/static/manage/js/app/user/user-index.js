 $(function(){
	 $('#btnQuery').click(function() {
		 var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");  //非法字符
		 var rolename = $("#rolename");
		 if(!rolename.val()){
			 alert('请输入茶艺师姓名');
			 rolename.focus();
			 return false;
		 }else if(rolename.val && pattern.test($("#rolename").val())){
			 alert('您输入的符号无效');
			 rolename.focus();
			 return false;
		 }
	});
	 
	 $("#editor").click(function(){
			var curWwwPath=window.document.location.href;
			var localhostPaht=curWwwPath.substring(0,curWwwPath.lastIndexOf('/'));
			var data = localhostPaht+"/queryDetaiel?id="+$("#editor").val();
			window.location.href=data;
	 });
		$("#adduser").click(function(){
			window.location.href='lodingAdmin';
	 });
	
 });
	 
	
 
	 
 