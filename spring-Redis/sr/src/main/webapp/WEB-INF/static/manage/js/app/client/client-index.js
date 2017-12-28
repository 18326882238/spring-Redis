$(function() {
	$('#btnQuery').click(function() {
		var reg = new RegExp("^[0-9]*$");
		var rolename = $('#rolename');
		if(!rolename.val()){
			alert("请输入需要查询的登录名！");
			rolename.focus();
			return false;
		}else if(rolename.val() && !reg.test(rolename.val())){
			alert("请输入数字！");
			rolename.focus();
			return false;
		}
	});
});