/**
 * author:tr
 * time:2015/7/10 17:00
 */
$(function() {
	if(top!=self){
	     if(top.location != self.location)
	          top.location=self.location;
	}
	$('#submit').click(function() {
		var name = $('#name').val();
		var pwd = $('#name').val();
		if(!name){
			alert('用户名不能为空');
			name.focus();
			return;
		}
		if(!pwd){
			alert('密码不能为空');
			pwd.focus();
			return;
		}
	});
	function Cmd(){
		   var ipt = document.getElementById("divbox").getElementsByTagName("input"); //查找divbox这个div里的所有文本框
		   for(var i = 0; i < ipt.length; i++){ //循环
		       if(ipt[i].value.length == 0){ //如果其中一个文本框没有填写
		           alert("用户名或密码不能为空！"); //弹出提示
		           ipt[i].focus(); //定位到没有填写的文本框
		           return false; //返回false
		       }
		   }
		   return true; //都已经填写，返回true
		   }
});

