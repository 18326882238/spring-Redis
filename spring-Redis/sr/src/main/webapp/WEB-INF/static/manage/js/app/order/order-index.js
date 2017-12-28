
$(function(){
	$('.homePage').hide();
	$('.topPage').hide();
	$('.bottomPage').hide();
	$('.lastPage').hide();
	/*$('#finished').bind("click",function(e){
		
		$('.all').show();
		$('.homePage').hide();
		$('.topPage').hide();
		$('.bottomPage').hide();
		$('.lastPage').hide();
		
	});*/
	var pageName = $('#pageName').val();
	switch (pageName) {
	case '0':
		$('.all').show();
		break;
	case '1':
		$('.keyword').show();
		break;
	case '2':
		$('.app_finished').show();
		break;
	case '3':
		$('.app_unfinished').show();
		break;
	}
});
function check(){
	sessionStorage.setItem('rolename', $("#rolename").val());
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