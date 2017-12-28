//post
var REQUEST_TYPE_POST = "POST";
//GET
var REQUEST_TYPE_GET = "GET";

/**
 * 封装的ajax请求数据
 * url:请求的路径
 * params:参数
 * isValidate:是否需求登录验证
 * type:访问类型:"POST","GET",
 * method:回调的方法名称
 */
function requestDataByAjax(url, params, type, method){
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
            alert("错误"+textStatus);
        }
    });
}