<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/23
  Time: 19:20
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
    <title>小鸟编程后台管理</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min_2.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/layui.js"></script>
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
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />
</head>

<body>

<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">小鸟编程后台管理</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide-xs" lay-unselect>
                <a href="" layadmin-event="theme">
                    <i class="layui-icon layui-icon-theme"></i>
                </a>
            </li>
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a>
                    <img id="image" src="${pageContext.request.contextPath}/static/imager/mo.jpg" class="layui-nav-img">我
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">Sign out</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item">
                    <a class="" href="">系统管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/houtai/userxi" >用户管理</a></dd>
                        <dd><a href="javascript:;">menu 2</a></dd>
                        <dd><a href="javascript:;">menu 3</a></dd>
                        <dd><a href="">the links</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="" >内容管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/houtai/general.action">普通内容</a></dd>
                        <dd><a href="javascript:;">list 2</a></dd>
                        <dd><a href="1.html">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="hello.html">click menu item</a></li>
                <li class="layui-nav-item"><a href="">the links</a></li>
            </ul>
        </div>
    </div>
    
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div  style="width: 99%; height:100%">
            <iframe id="iframe" frameborder="no" style="width: 100%; height:100%"></iframe>
        </div>
    
    </div>
    
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>
<%--刷新页面保持页面不重置--%>
<script>
    layui.use(['element', 'layer', 'util'], function(){
        var $ = layui.$;
        
        let href_url = sessionStorage.getItem("url1")
        // console.log({href_url: href_url});
        if(href_url !== null || href_url === "" || href_url !== undefined){
            $("#iframe").attr('src',href_url);
        }
        $(document).ready(function(){
            $("ul a").click(function(e){
                e.preventDefault();
                if($(this).attr("href") !== "" && $(this).attr("href") !== undefined){
                    sessionStorage.setItem("url1",$(this).attr("href"));
                    $("#iframe").attr('src',$(this).attr("href"));
                }
            })
        })
    });
</script>


<%--<div class="layui-row">--%>
<%--    <div class="layui-col-xs1">--%>
<%--        <div class="grid-demo ">--%>
<%--            <div style="height: 1020px;width: 190%;" class="layui-bg-cyan">--%>
<%--                <div style="width: 100%;height: 30px; text-align: center">--%>
<%--                    <h2>友情管理系统</h2>--%>
<%--                </div>--%>
<%--                <ul class="layui-nav layui-nav-tree layui-bg-cyan layui-inline" lay-filter="demo" style="width: 100%">--%>
<%--                    <li class="layui-nav-item layui-nav-itemed">--%>
<%--                        <a href="javascript:;">系统管理</a>--%>
<%--                        <dl class="layui-nav-child">--%>
<%--                            <dd><a href="${pageContext.request.contextPath}/sys/houtai/userxi"   target="test">用户管理</a></dd>--%>
<%--                            <dd><a href="javascript:;">选项二</a></dd>--%>
<%--                            <dd><a href="javascript:;">选项三</a></dd>--%>
<%--                            <dd><a href="">跳转项</a></dd>--%>
<%--                        </dl>--%>
<%--                    </li>--%>
<%--                    <li class="layui-nav-item">--%>
<%--                        <a href="javascript:;">解决方案</a>--%>
<%--                        <dl class="layui-nav-child">--%>
<%--                            <dd><a href="https://www.aliyun.com"   target="test">移动模块</a></dd>--%>
<%--                            <dd><a href="http://www.qq.com"   target="test">后台模版</a></dd>--%>
<%--                            <dd><a href="${pageContext.request.contextPath}/"   target="test">电商平台</a></dd>--%>
<%--                        </dl>--%>
<%--                    </li>--%>
<%--                    <li class="layui-nav-item"><a href="">云市场</a></li>--%>
<%--                    <li class="layui-nav-item"><a href="">社区</a></li>--%>
<%--                </ul>--%>
<%--            --%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="layui-col-xs10 layui-col-md-offset1">--%>
<%--        <div class="grid-demo">--%>
<%--            <div class="layui-row layui-bg-green">--%>
<%--                <div class="layui-col-md10" style="color:#009688">--%>
<%--                    .--%>
<%--                </div>--%>
<%--                <div class="layui-col-md2">--%>
<%--                    <ul class="layui-nav layui-bg-green">--%>
<%--                        <li class="layui-nav-item">--%>
<%--                            <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img" id="image">我</a>--%>
<%--                            <dl class="layui-nav-child">--%>
<%--                                <dd><a href="javascript:;">退了</a></dd>--%>
<%--                            </dl>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-bg-gray">--%>
<%--                <div class="layui-row">--%>
<%--                    <div class="layui-col-md12">--%>
<%--                        <div class="layui-panel">--%>
<%--                            <div >--%>
<%--                                <div style="width: 100%;height: 900px;text-align: center;">--%>
<%--                                    <iframe frameborder="no" src="${pageContext.request.contextPath}/sys/houtai/userxi" name="test" style="width: 99%;height: 920px;"></iframe>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            --%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



<%--<div style="text-align: center;width: 100%;height: 50px" class="layui-bg-cyan">--%>
<%--    <%@ include file="../../head.jsp"%>--%>
<%--</div>--%>

<script>
    function image(){
        if(sessionStorage.getItem("userid") !== undefined && sessionStorage.getItem("userid") !== null && sessionStorage.getItem("userid") !== "") {
            let username  = sessionStorage.getItem("userid");
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
                }
            })
        }
    }
    window.onload = image();
</script>
</body>
</html>