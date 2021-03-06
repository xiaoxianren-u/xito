<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/8/15
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/imager/download.jpg">
    <script src="static/js/style.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />
    
    <title>Title</title>
</head>
<body style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">




<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="color: white;width: 340px" >
    
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>????????????</h2>
            <br>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs1">
                        <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-username" ></label></div>
                    </div>
                    <div class="layui-col-xs11">
                        <div class="grid-demo"><input type="text" name="username"  id="username" lay-verify="required" placeholder="?????????" class="layui-input"></div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs1">
                        <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-password" ></label></div>
                    </div>
                    <div class="layui-col-xs11">
                        <input type="password" name="password" id="password" lay-verify="required" placeholder="??????" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs1">
                        <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-password"></label></div>
                    </div>
                    <div class="layui-col-xs11">
                        <input type="password" name="password" id="password1" lay-verify="required" placeholder="????????????" class="layui-input">
                    </div>
                </div>
            </div>
            <br/><br/>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" id="bnt">??? ???</button>
            </div>
            <div class="layui-trans layui-form-item layadmin-user-login-other">
                <label>??????????????????</label>
                <a href="javascript:;" style="color: #1E9FFF;"><i class="layui-icon layui-icon-login-qq"></i></a>
                <a href="javascript:;" style="color: #00FF00"><i class="layui-icon layui-icon-login-wechat"></i></a>
                <a href="javascript:;" style="color: red"><i class="layui-icon layui-icon-login-weibo"></i></a>
                
                <a href="${pageContext.request.contextPath}/login/" class="layadmin-user-jump-change layadmin-link" style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;????????????</a>
            </div>
        </div>
    </div>
    
    <div class="layui-trans layadmin-user-login-footer">
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <p>?? 2018 <a href="javascript:;" target="_blank"style="color: white" >yz.com</a></p>
        <p style="color: white">
            <span><a href="javascript:;" style="color: white">????????????</a></span>
            <span><a href="javascript:;" style="color: white">????????????</a></span>
            <span><a href="javascript:;" style="color: white">????????????</a></span>
        </p>
    </div>


</div>


<script>

    $(function () {
        $("#username").blur(function () {

            let username = $("#username").val();
            if (username.length > 30 || username.length < 8) {
                layer.msg("?????????8~30??????????????????", {icon: 0});
            }
        });
        $("#password").blur(function () {
            let password = $("#password").val();
            if (password.length > 30 || password.length < 8) {
                layer.msg("?????????8~30???????????????", {icon: 0});
            }
        });
        
        
        $("#bnt").click(function () {
            let username = $("#username").val();
            let password = $("#password").val();
            let password1 = $("#password1").val();

            let email = "";
            
            if (password === password1){
                if (username === undefined || username === "" || username == null  ){
                    layer.alert('?????????????????????', {icon: 0});
                }else if(username.length < 8){
                    layer.alert('?????????????????????8???', {icon: 0});
                }else if(password === undefined || password == null ||password === ""){
                    layer.alert('??????????????????', {icon: 0});
                }else if(password.length < 8){
                    layer.alert('??????????????????8???', {icon: 0});
                }else{
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/login/zhu_ce",
                        async: true,
                        dataType: "json",
                        data: JSON.stringify({
                            username:username,
                            password:password,
                            email:email,
                        }),
                        contentType: "application/json;charset=UTF-8",
                        success: function (data) {
                            console.log(data);
                            if (data === "0"){
                                layer.alert('????????????????????????', {icon: 5});
                            }
                            if (data === "1") {
                                layer.alert('????????????', {icon: 6});
                            }
                            if (data === "2"){
                                layer.alert('???????????????', {icon: 2});
                            }
                            if (data === "3"){
                                layer.alert('??????????????????', {icon: 2});
                            }
                            if (data === "4"){
                                layer.alert('?????????????????????', {icon: 2});
                            }
                        }
                    });
                }
            }else {
                layer.msg("?????????????????????",{icon:5})
            }
            
            
        })
    })


</script>
</body>
</html>
