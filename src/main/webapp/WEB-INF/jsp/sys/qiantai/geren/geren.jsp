<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/27
  Time: 14:17
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/login.css">
    <script src="${pageContext.request.contextPath}/static/js/vue.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/download.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/download.jpg" type="image/x-icon" />
    
    <title>个人中心</title>
</head>
<body style="background-color: #F0F2F5">
<ul class="layui-nav" lay-bar="disabled">
    <li class="layui-nav-item" lay-unselect="">
        <img id="image" src="${pageContext.request.contextPath}/static/imager/download.jpg" class="layui-nav-img">
    </li>
    <li class="layui-nav-item  layui-icon">
        <a href="${pageContext.request.contextPath}/">&#xe68e;首页</a>
    </li>
</ul>
<script>
    $(function () {
        $("#image").hover(function () {             //悬停事件
            const tips = layer.tips(sessionStorage.getItem("userid") + "欢迎你", '#image', {
                tips: [1, '#555555']
                // 上右下左四个方向，通过1-4进行方向设定
            });
        });
    })
</script>
<br><br><br><br>

<div class="layui-row">
    <div class="layui-col-xs1">
        <div class="grid-demo grid-demo-bg1" style="color: #F0F2F5">6/12</div>
    </div>
    <div class="layui-col-xs10">
        <div class="grid-demo">
            
            <div style="padding: 2px 10px;">
                <div class="layui-row">
                    <div class="layui-col-xs2">
                        <div class="grid-demo grid-demo-bg1">
                            <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 20px;">
                                <li class="layui-nav-item layui-nav-itemed" style="background-color: white">
                                    <dl class="layui-col-space3" style="color: #0C0C0C">
                                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/geren/gerindex"   target="test" style="color: #0C0C0C">个人中心</a></dd>
                                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/geren/toux"   target="test"style="color: #0C0C0C">个人头像</a></dd>
                                        <dd><a href="javascript:;" style="color: #0C0C0C">我的收藏</a></dd>
                                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/geren/getuijian"   target="test" style="color: #0C0C0C">我的推荐</a></dd>
                                        <dd><a href="" style="color: #0C0C0C">项目分享</a></dd>
                                        <dd><a href="javascript:;" style="color: #0C0C0C">消息通知<span class="layui-badge">9</span></a></dd>
                                        <dd><a href="" style="color: #0C0C0C">心愿单</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="layui-col-xs10">
                        <div class="grid-demo">

                            <div style="width: 100%;height: 1080px;text-align: center;">
                                <iframe frameborder="no" src="${pageContext.request.contextPath}/sys/qiantai/geren/gerindex" name="test" style="width: 97%;height: 100%;"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-xs1">
        <div class="grid-demo" style="color: #F0F2F5">6/12</div>
    </div>
</div>
<br><br>
<div style="text-align: center;width: 100%;height: 50px;background-color: #a1a1a1">
    <%@ include file="../../../head.jsp" %>
</div>
<script>
    function image() {
        console.log("---------------------------------------");
        if (sessionStorage.getItem("userid") !== undefined && sessionStorage.getItem("userid") !== null && sessionStorage.getItem("userid") !== "") {
            let username = sessionStorage.getItem("userid");
            console.log("---------------------------------------" + username);
            $.ajax({
                type: 'post',
                url: "${pageContext.request.contextPath}/sys/qiantai/geren/indimage",
                async: true,
                dataType: 'json',
                data: JSON.stringify({username: username}),
                contentType: "application/json;charset=UTF-8",
                success: function (res) {
                    if (res !== null){
                        $("#image").attr("src",res);
                    }
                    // console.log(res);
                    // console.log("---------------------------------------" + username);
                }
            })
        }
    }

    window.onload = image();
</script>
</body>
</html>
