/**
 * author:tr
 * time:2015/7/13 14:00
 */
$(function(){
	var that = null;
	//时间显示
	setInterval(function() {
		var date=new Date();//new一个时间对象
		var m=date.getMinutes();
		var s=date.getSeconds();
		$('#time').text(date.getFullYear() + "年" + (date.getMonth()+1) + "月"
				+ date.getDate() + "日   " + date.getHours() + ":" + (m > 10 ? m : '0' + m) + ':' + (s > 10 ? s : '0' + s));
	}, 1);
	$('.dropdown ul').hide();
	//鼠标控制显示/隐藏
	$('.dropdown').mouseover(function() {
		that = $(this);
		$('.dropdown ul').hide();
		$('.dropdown a span').show();
		that.children('a').children('span').hide();
		that.children('ul').show();
	});
	//点击对应在右边显示
	$('.dropdown ul li').click(function(){
		that = $(this);
		$('#myIframe').attr('src',that.children('a').attr('data-url'));
	});
	//清除缓存
	$('#clear_datas').click(function(){
		var url  = path + "/system/cache/clear";
		requestDataByAjax(url, "", REQUEST_TYPE_POST, function(result){
			if(result != null && result != ""){
				if(result.code == 1001){
					alert("清除成功");
				}else{
					alert("清除失败");
				}
			}else{
				alert("数据传输失败");
			}
		});
	});
});

