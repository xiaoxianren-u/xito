<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/8/15
  Time: 17:52
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
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />
    
    <title>Title</title>
</head>
<body style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">




    <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="color: white" >
        
        <div class="layadmin-user-login-main">
            <div class="layadmin-user-login-box layadmin-user-login-header">
                <h2>小鸟编程</h2>
               <br>
            </div>
            <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
                <div class="layui-form-item">
                     <div class="layui-row">
                        <div class="layui-col-xs1">
                            <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-username" ></label></div>
                        </div>
                        <div class="layui-col-xs11">
                            <div class="grid-demo"><input type="text" name="username" value="admin123"  id="username" lay-verify="required" placeholder="用户名" class="layui-input"></div>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
    
                    <div class="layui-row">
                        <div class="layui-col-xs1">
                            <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-password" ></label></div>
                        </div>
                        <div class="layui-col-xs11">
                            <input type="password" name="password" id="password" value="12345678" lay-verify="required" placeholder="密码" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-row">
                        <div class="layui-col-xs7">
    
                            <div class="layui-row">
                                <div class="layui-col-xs2">
                                    <div class="grid-demo grid-demo-bg1" style="margin-top: 7px;"><label class="layadmin-user-login-icon layui-icon layui-icon-vercode"></label></div>
                                </div>
                                <div class="layui-col-xs10">
                                    <input type="text" name="vercode" id="vercode" value="1" lay-verify="required" placeholder="图形验证码" class="layui-input">
                                </div>
                            </div>
                        </div>
                        <div class="layui-col-xs5">
                            <div style="margin-left: 20px;">
                                <img src="https://www.oschina.net/action/user/captcha" class="layadmin-user-login-codeimg" id="LAY-user-get-vercode">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item" style="margin-bottom: 20px;">
                    <input type="checkbox" name="remember" lay-skin="primary" title="记住密码" style="color: white">
                    
                    <a href="javascript:;" class="layadmin-user-jump-change layadmin-link" style="margin-top: 90px;color: white">忘记密码？</a>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" id="bnt">登 入</button>
                </div>
                <div class="layui-trans layui-form-item layadmin-user-login-other">
                    <label>社交账号登入</label>
                    <a href="javascript:;" style="color: #1E9FFF;"><i class="layui-icon layui-icon-login-qq"></i></a>
                    <a href="javascript:;" style="color: #00FF00"><i class="layui-icon layui-icon-login-wechat"></i></a>
                    <a href="javascript:;" style="color: red"><i class="layui-icon layui-icon-login-weibo"></i></a>
                    
                    <a href="${pageContext.request.contextPath}/login/zhu_c" class="layadmin-user-jump-change layadmin-link" style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册帐号</a>
                </div>
            </div>
        </div>
        
        <div class="layui-trans layadmin-user-login-footer">
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <p>© 2018 <a href="javascript:;" target="_blank"style="color: white" >yz.com</a></p>
            <p style="color: white">
                <span><a href="javascript:;" style="color: white">获取授权</a></span>
                <span><a href="javascript:;" style="color: white">在线演示</a></span>
                <span><a href="javascript:;" style="color: white">前往官网</a></span>
            </p>
        </div>
        
    
    </div>
    

<script>
    
    $(function () {
        $("#bnt").click(function () {
            let username = $("#username").val();
            let password = $("#password").val();
            let vercode = $("#vercode").val();
            

            // console.log({username:vercode});
            // console.log(username);
            // console.log(password);
            if (username !== "" && password !== "" && vercode !== ""){
                let stati = "0";
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/login/login",
                    async: true,
                    dataType: "json",
                    data: JSON.stringify({username: username, password: password ,stati:stati}),
                    contentType: "application/json;charset=UTF-8",
                    success: function (data) {

                        if (data === null || data === undefined){
                            layer.alert('账号错误', {icon: 5});
                        }else if (data.bool === false){
                            layer.alert('密码错误', {icon: 5});
                        }else {
                            sessionStorage.setItem("userid",data.username);
                            sessionStorage.setItem("id",data.id);
                            window.location = "${pageContext.request.contextPath}/"
                            
                        }
                    }
                });
            }
        })
    })
    
    
</script>
</body>
</html>
