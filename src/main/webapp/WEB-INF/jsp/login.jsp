<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<%--    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min_2.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/static/js/layui.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/static/js/session.js"></script>--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/layui.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/laydate/default/laydate.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/layer.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-0.gif">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-1.gif">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/loading-2.gif">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/icon-ext.png">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/icon.png">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/code.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modules/layer/default/layer.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/login.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/style.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/imager/download.jpg">--%>
<%--    <script src="static/js/style.js"></script>--%>
    <jsp:include page="../h.jsp" ></jsp:include>
    <title>系统登录</title>
</head>
<body style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">
<div class="container right-panel-active">
    <!-- 注册 -->
    <div class="container_from conainer--signup">
        <form class="from" id="from1">
            <h2 class="from_title">注册账号</h2>
            <input type="text" placeholder=" User" class="input" name="" id="user-name">
            <input type="email" placeholder=" Email" class="input" name="" id="email">
            <input type="password" placeholder=" password" class="input" name="" id="pass-word">
            <button class="btn" id="bnt-zc">点击注册</button>
        </form>
    </div>
    
    <!-- 登录 -->
    <div class="container_from conainer--signin">
        <form class="from" id="from2">
            <h2 class="from_title">欢迎登录</h2>
            <input type="text" placeholder=" 请输入用户名" class="input" name="" value="admin123" id="username"><span id="userid" style="float: left;color: red;font-size: 7px;"></span>
            <input type="password" placeholder=" 请输入密码" class="input" name="" value="12345678" id="password"><span id="passid" style="float: left;color: red;font-size: 7px;"></span>
    
            <div class="layui-inline">
                <input name="" class="input" placeholder="请选择你的角色" class="layui-input" id="demo2" style="width: 225px">
            </div>
            <a href="#" class="link">忘记密码?</a>
            <button class="btn" id="btn">登录</button>
        </form>
    </div>
    
    <div class="container_overlay">
        <div class="overlay" style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">
            <div class="overlay_panel overlay--left">
                <button class="btn" id="signin">已有账号，直接登录</button>
            </div>
            
            <div class="overlay_panel overlay--right">
                <button class="btn" id="signup">没有账号，直接登录</button>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br>
<div>
    <%@ include file="head.jsp"%>
</div>



</body>

<%--切换动作--%>
<script type="text/javascript">

    const signinBtn = document.getElementById("signin");
    const signupBtn = document.getElementById("signup");
    const fistForm = document.getElementById("from1");
    const secondForm = document.getElementById("from2");
    const container = document.querySelector(".container");


    signinBtn.addEventListener("click",()=>{
        container.classList.remove("right-panel-active")
    })
    signupBtn.addEventListener("click",()=>{
        container.classList.add("right-panel-active")
    })

    fistForm.addEventListener("submit",(e) =>e.preventDefault())
    secondForm.addEventListener("submit",(e) =>e.preventDefault())
</script>

<script type="text/javascript">

    $(function () {

        //判断用户名字符数量是否够
        $("#username").blur(function () {
            let username = $(this).val();
            console.log(username);
            if (username.length > 30 || username.length < 8) {
                $("#userid").html("请输入8~30之间的字符")
            } else {
                $("#userid").html("")
            }
        });
        //判断密码字符数量是否够
        $("#password").blur(function () {
            let password = $(this).val();
            console.log(password);
            if (password.length > 30 || password.length < 8) {
                $("#passid").html("请输入8~30之间的字符")
            } else {
                $("#passid").html("")
            }
        });
        //登录
        $("#btn").click(function () {
            let username = $("#username").val();
            let password = $("#password").val();
            // let static = $("#demo2").val();
            
            console.log(static);
            if (username === undefined || username === "" || username == null){
                layer.alert('用户名不能为空', {icon: 0});
            }else if(password === undefined ||password === "" || password == null){
                layer.alert('密码不能为空', {icon: 0});
            }
            //后面再用
            else if(static === undefined || static === "" || static === null){
                layer.alert('角色不能为空', {icon: 0});
                
            }
            else {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/login/login",
                    async: true,
                    dataType: "json",
                    data: JSON.stringify({username: username, password: password ,stati:static}),
                    contentType: "application/json;charset=UTF-8",

                    success: function (data) {
                        console.log(data+"  dsfsdf");
                        
                        if (data === null || data === undefined){
                            layer.alert('账号错误', {icon: 5});
                        }else if (data.bool === false){
                            layer.alert('密码错误', {icon: 5});
                        }else if(data.static === false){
                            layer.alert('角色选择错误', {icon: 5});
                        }else {
                            sessionStorage.setItem("userid",data.username);
                            sessionStorage.setItem("id",data.id);
                            let  id = sessionStorage.getItem("userid");
                            if(id === undefined){
                                layer.alert('无法登陆,该用户可能不存在,请先注册', {icon: 5});
                            }else {
                               
                                if(static === 0){
                                    window.location = "${pageContext.request.contextPath}/"
                                }else {
                                    window.location = "${pageContext.request.contextPath}/sys/houtai/index.action"
                                }
                            }
                        }
                    }
                });
            }
        });

        //判断注册时是否有用户名和密码
        $("#user-name").blur(function () {
           
           let username = $("#user-name").val();
            if (username.length > 30 || username.length < 8) {
                layer.alert("请输入8~30之间的用户名", {icon: 0});
            }
        });
        $("#pass-word").blur(function () {
            let password = $("#pass-word").val();
            if (password.length > 30 || password.length < 8) {
                layer.alert("请输入8~30之间的密码", {icon: 0});
            }
        });
        //实现注册
        $("#bnt-zc").click(function (){
            let username = $("#user-name").val();
            let password = $("#pass-word").val();
            let email = $("#email").val();
            var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            
            console.log("=======================")
            console.log({
                username:username,
                password:password,
                email:email,
            });
            if (username === undefined || username === "" || username == null  ){
                layer.alert('用户名不能为空', {icon: 0});
            }else if(username.length < 8){
                layer.alert('用户名不能少于8位', {icon: 0});
            }else if(password === undefined || password == null ||password === ""){
                layer.alert('密码不能为空', {icon: 0});
            }else if(password.length < 8){
                layer.alert('密码不能少于8位', {icon: 0});
            }else if(email !== undefined && email !== null && email !== ""){
                if(!reg.test(email)){
                    layer.alert("邮箱格式不正确",{icon: 0});
                }
            }else {
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
                            layer.alert('系统繁忙无法注册', {icon: 5});
                        }
                        if (data === "1") {
                            layer.alert('注册成功', {icon: 6});
                        }
                        if (data === "2"){
                            layer.alert('用户已存在', {icon: 2});
                        }
                        if (data === "3"){
                            layer.alert('密码不能为空', {icon: 2});
                        }
                        if (data === "4"){
                            layer.alert('用户名不能为空', {icon: 2});
                        }
                    }
                });
            }
        });
    });
    
    
    //判别用户是否登陆
    var static = undefined;
    layui.use('dropdown',function () {
        var  dropdown = layui.dropdown

        dropdown.render({
            elem: '#demo2'
            ,data: [{
                title: '普通用户'
                ,id: 0
            },{
                title: '管理员'
                ,id: 1
            }]
            ,click: function(obj){
                this.elem.val(obj.title);
                 static = obj.id;
            }
            ,style: 'width: 225px;'
        });
    })

</script>


</html>