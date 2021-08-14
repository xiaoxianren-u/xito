<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/26
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min_2.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/layui.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/session.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/laydate/default/laydate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/layer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-0.gif">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-1.gif">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-2.gif">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/icon-ext.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/code.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/layer.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />
    
    <title>Document</title>
</head>
<body>

<div class="layui-row">
    <div class="layui-col-xs8">
        <div class="grid-demo grid-demo-bg1">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/sys/qiantai/qiantai"   target="test">首页</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">编程语言</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/java"   target="test">java</a></dd>
                        <dd><a href="">python</a></dd>
                        <dd><a href="">c/c++</a></dd>
                        <dd><a href="">javaScript</a></dd>
                        <dd><a href="">PHP</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">必修基础</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">算法数据结构</a></dd>
                        <dd><a href="">计算机系统</a></dd>
                        <dd><a href="">计算机网络</a></dd>
                        <dd><a href="">软件开发</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">编程框架</a></li>
                <li class="layui-nav-item"><a href="">项目分享</a></li>
            </ul>
        </div>
    </div>
    <div class="layui-col-xs2">
        <div class="grid-demo layui-bg-blue">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item">
                    <input type="tel" id="username" name="username" placeholder="请输入用户名" autocomplete="off"
                           class="layui-input">
                </li>
                <li class="layui-nav-item">
                    <button type="button" id="bnt" class="layui-btn  layui-btn-radius">搜索</button>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-col-xs1 layui-bg-blue">
        <div class="grid-demo grid-demo-bg1">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item" style="color: #1E9FFF">s
                
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-col-xs1">
        <div class="grid-demo">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item" lay-unselect="">
                    <a href="javascript:;"><img id="image" src="${pageContext.request.contextPath}/static/imager/mo.jpg" class="layui-nav-img"></a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/geren/">个人中心</a></dd>
                        <dd><a href="javascript:;">横线隔断</a></dd>
                        <hr>
                        <dd style="text-align: center;"><a id="denglv">登录</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="layui-bg-gray" style="padding: 10px;">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-panel">
                <div style="padding: 0;">
                    <div style="width: 100%;height: 930px;text-align: center;">
                        <iframe frameborder="no" src="${pageContext.request.contextPath}/sys/qiantai/qiantai" name="test" style="width: 100%;height: 920px;"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="text-align: center;width: 100%;height: 50px;background-color: #a1a1a1">
    <%@ include file="head.jsp" %>
</div>
</body>

<script>
    
    function image(){
        console.log("---------------------------------------");
        if(sessionStorage.getItem("userid") !== undefined && sessionStorage.getItem("userid") !== null && sessionStorage.getItem("userid") !== "") {
            let username  = sessionStorage.getItem("userid");
            console.log("---------------------------------------"+username);
            $.ajax({
                type: 'post',
                url: "${pageContext.request.contextPath}/sys/qiantai/geren/indimage",
                async: true,
                dataType: 'json',
                data: JSON.stringify({username:username}),
                contentType: "application/json;charset=UTF-8",
                success:function (res) {
                    // 不为空时在回显头像
                    if (res !== null){
                        $("#image").attr("src",res);
                    }
                   
                    console.log(res);
                    console.log("---------------------------------------"+username);
                }
            })
        }
    }
    window.onload = image();
    
    function fun() {
        if(sessionStorage.getItem("userid") === undefined || sessionStorage.getItem("userid") === null || sessionStorage.getItem("userid") === ""){
            name = "0";
            $("#denglv").html("登录");
            
        }else {
            name = "1";
            $("#denglv").html("退出");
        }
        console.log(sessionStorage.getItem("userid"));
    }
    window.onload = fun();
    //搜索按钮
    $("#bnt").click(function () {

        if(sessionStorage.getItem("userid") === undefined || sessionStorage.getItem("userid") === null || sessionStorage.getItem("userid") === ""){
            console.log(sessionStorage.getItem("userid")+"  sdfsdfsfsf");
            layer.msg("请先登录",{icon:5});
        }else {
            console.log(sessionStorage.getItem("userid")+"aaaaaaaaaaaaaaaaa");
            let username = $("#username").val();
            console.log(username);
            if (username === undefined || username === "" || username == null) {
                layer.msg('请输入你要查询的信息', {icon: 0});
            } else {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/sys/qiantai/select",
                    async: true,
                    dataType: "json",
                    data: JSON.stringify({username: username}),
                    contentType: "application/json;charset=UTF-8",
                    success: function (data) {
                        console.log(data);
                        layer.alert(data, {icon: 6});
                    }
                });
            }
        }
    });
    //实现退出登录
    $("#denglv").click(function () {
        console.log(name);
        if (name === "1"){
            sessionStorage.clear();
            layer.msg("已退出");
            console.log("==================1111")
            $("#denglv").html("登录");
            name="0";
        }else {
            window.location = "${pageContext.request.contextPath}/login/yz"
        }
    })
    
    
</script>

<%--检测Cookie是否打开--%>
<script>
    function CookieEnable()   {
        var result=false;
        if(navigator.cookiesEnabled)  return true;
        document.cookie = "testcookie=yes;";
        var cookieSet = document.cookie;
        if (cookieSet.indexOf("testcookie=yes") > -1)  result=true;
        document.cookie = "";
        return result;
    }
    if(!CookieEnable()){
        layer.alert("对不起！您的浏览器Cookie已经关闭，您将可能无法正常使用该网站，请到设置中打开Cookie", {icon: 5});
    }else {
        layer.msg("欢迎来到小时编程网");
    }
</script>

</html>