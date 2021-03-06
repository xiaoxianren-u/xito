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
<body style="background-color:#e5e4e4">

<div class="layui-row">
    <div class="layui-col-xs8">
        <div class="grid-demo grid-demo-bg1">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/sys/qiantai/qiantai" >??????</a></li>
                <li class="layui-nav-item">
                    <a href="">????????????</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/java">java</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/python">python</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/c">c/c++</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/javas">javaScript</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/php">PHP</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="">????????????</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/suanfa">??????????????????</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/jixiton">???????????????</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/jiwangluo">???????????????</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/ruanji">????????????</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">????????????</a></li>
                <li class="layui-nav-item"><a href="">????????????</a></li>
            </ul>
        </div>
    </div>
    <div class="layui-col-xs2">
        <div class="grid-demo layui-bg-blue">
            <ul class="layui-nav layui-bg-blue" lay-bar="disabled">
                <li class="layui-nav-item">
                    <input type="tel" id="username" name="username" placeholder="??????????????????" autocomplete="off"
                           class="layui-input">
                </li>
                <li class="layui-nav-item">
                    <button type="button" id="bnt" class="layui-btn  layui-btn-radius">??????</button>
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
                        <dd><a href="${pageContext.request.contextPath}/sys/qiantai/geren/" target="_blank" >????????????</a></dd>
                        <dd><a href="javascript:;">????????????</a></dd>
                        <hr>
                        <dd style="text-align: center;"><a id="denglv">??????</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>

<div style="width: 100%;height: 940px;text-align: center;">
    <iframe id="iframe" frameborder="no" src="${pageContext.request.contextPath}/sys/qiantai/qiantai"  style="width: 100%; height:100%;text-align: center"></iframe>
</div>

<script></script>
<%--?????????????????????????????????--%>
<script>
    layui.use(['element', 'layer', 'util'], function(){
        var $ = layui.$;
        
        let href_url = sessionStorage.getItem("url")
        if (href_url === null){
            sessionStorage.setItem("url","/sys/qiantai/qiantai");
            window.location="${pageContext.request.contextPath}/"
        }
        console.log({href_url: href_url});
        if(href_url !== null || href_url === "" || href_url !== undefined){
            $("#iframe").attr('src',href_url);
        }
        $(document).ready(function(){
            $("ul a").click(function(e){
                e.preventDefault();
                let url =$(this).attr("href");
                if(url!== "" && url !== undefined){
                    if(url !== "/sys/qiantai/geren/"){
                        sessionStorage.setItem("url",$(this).attr("href"));
                        $("#iframe").attr('src',$(this).attr("href"));
                    }else if(url === "/sys/qiantai/geren/") {
                        let username = sessionStorage.getItem("userid");
                        // console.log(username);
                        if (username !== null &&  username.length>=8){
                            // window.location.href=url;
                            window.open(url);
                        }else {
                            layer.msg("????????????");
                        }
                        
                    }

                }
            })
        })
    });
</script>

<div style="text-align: center;width: 100%;height: 50px;background-color: #a1a1a1">
    <%@ include file="head.jsp" %>
</div>
</body>

<script>
    //??????
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
                    // ???????????????????????????
                    if (res !== null){
                        $("#image").attr("src",res);
                    }
                }
            })
        }
    }
    window.onload = image();
    
    function fun() {
        if(sessionStorage.getItem("userid") === undefined || sessionStorage.getItem("userid") === null || sessionStorage.getItem("userid") === ""){
            name = "0";
            $("#denglv").html("??????");
            
        }else {
            name = "1";
            $("#denglv").html("??????");
        }
        console.log(sessionStorage.getItem("userid"));
    }
    window.onload = fun();
    //????????????
    $("#bnt").click(function () {

        if(sessionStorage.getItem("userid") === undefined || sessionStorage.getItem("userid") === null || sessionStorage.getItem("userid") === ""){
            console.log(sessionStorage.getItem("userid")+"  sdfsdfsfsf");
            layer.msg("????????????",{icon:5});
        }else {
            console.log(sessionStorage.getItem("userid")+"aaaaaaaaaaaaaaaaa");
            let username = $("#username").val();
            console.log(username);
            if (username === undefined || username === "" || username == null) {
                layer.msg('??????????????????????????????', {icon: 0});
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
    //??????????????????
    $("#denglv").click(function () {
        console.log(name);
        if (name === "1"){
            sessionStorage.clear();
            layer.msg("?????????");
            console.log("==================1111")
            $("#denglv").html("??????");
            name="0";
        }else {
            window.location = "${pageContext.request.contextPath}/login/"
        }
    })
    
    
</script>

<%--??????Cookie????????????--%>
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
        layer.alert("???????????????????????????Cookie??????????????????????????????????????????????????????????????????????????????Cookie", {icon: 5});
    }else {
        layer.msg("???????????????????????????");
    }
</script>

</html>