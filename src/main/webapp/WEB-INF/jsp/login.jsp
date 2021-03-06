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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/imager/download.jpg">
    <script src="static/js/style.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />

<%--    <jsp:include page="../h.jsp" ></jsp:include>--%>
    <title>????????????</title>
</head>
<body style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">
<div class="container right-panel-active">
    <!-- ?????? -->
    <div class="container_from conainer--signup">
        <form class="from" id="from1">
            <h2 class="from_title">????????????</h2>
            <input type="text" placeholder=" User" class="input" name="" id="user-name">
            <input type="email" placeholder=" Email" class="input" name="" id="email">
            <input type="password" placeholder=" password" class="input" name="" id="pass-word">
            <button class="btn" id="bnt-zc">????????????</button>
        </form>
    </div>
    
    <!-- ?????? -->
    <div class="container_from conainer--signin">
        <form class="from" id="from2">
            <h2 class="from_title">????????????</h2>
            <input type="text" placeholder=" ??????????????????" class="input" name="" value="admin123" id="username"><span id="userid" style="float: left;color: red;font-size: 7px;"></span>
            <input type="password" placeholder=" ???????????????" class="input" name="" value="12345678" id="password"><span id="passid" style="float: left;color: red;font-size: 7px;"></span>
    
            <div class="layui-inline">
                <input name="" class="input" placeholder="?????????????????????" class="layui-input" id="demo2" style="width: 225px">
            </div>
            <a href="#" class="link">?????????????</a>
            <button class="btn" id="btn">??????</button>
        </form>
    </div>
    
    <div class="container_overlay">
        <div class="overlay" style="background: url('${pageContext.request.contextPath}/static/imager/download.jpg');">
            <div class="overlay_panel overlay--left">
                <button class="btn" id="signin">???????????????????????????</button>
            </div>
            
            <div class="overlay_panel overlay--right">
                <button class="btn" id="signup">???????????????????????????</button>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br>
<div>
    <%@ include file="head.jsp"%>
</div>



</body>

<%--????????????--%>
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

        //????????????????????????????????????
        $("#username").blur(function () {
            let username = $(this).val();
            console.log(username);
            if (username.length > 30 || username.length < 8) {
                $("#userid").html("?????????8~30???????????????")
            } else {
                $("#userid").html("")
            }
        });
        //?????????????????????????????????
        $("#password").blur(function () {
            let password = $(this).val();
            console.log(password);
            if (password.length > 30 || password.length < 8) {
                $("#passid").html("?????????8~30???????????????")
            } else {
                $("#passid").html("")
            }
        });
        //??????
        $("#btn").click(function () {
            let username = $("#username").val();
            let password = $("#password").val();
            // let static = $("#demo2").val();
            
            console.log(static);
            if (username === undefined || username === "" || username == null){
                layer.alert('?????????????????????', {icon: 0});
            }else if(password === undefined ||password === "" || password == null){
                layer.alert('??????????????????', {icon: 0});
            }
            //????????????
            else if(static === undefined || static === "" || static === null){
                layer.alert('??????????????????', {icon: 0});
                
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
                            layer.alert('????????????', {icon: 5});
                        }else if (data.bool === false){
                            layer.alert('????????????', {icon: 5});
                        }else if(data.static === false){
                            layer.alert('??????????????????', {icon: 5});
                        }else {
                            sessionStorage.setItem("userid",data.username);
                            sessionStorage.setItem("id",data.id);
                            let  id = sessionStorage.getItem("userid");
                            if(id === undefined){
                                layer.alert('????????????,????????????????????????,????????????', {icon: 5});
                            }else {
                                if(static === 0){
                                    sessionStorage.setItem("url","/sys/qiantai/qiantai");
                                    window.location = "${pageContext.request.contextPath}/"
                                }else {
                                    sessionStorage.setItem("url1","/sys/houtai/userxi");
                                    window.location = "${pageContext.request.contextPath}/sys/houtai/index.action"
                                }
                            }
                        }
                    }
                });
            }
        });

        //??????????????????????????????????????????
        $("#user-name").blur(function () {
           
           let username = $("#user-name").val();
            if (username.length > 30 || username.length < 8) {
                layer.alert("?????????8~30??????????????????", {icon: 0});
            }
        });
        $("#pass-word").blur(function () {
            let password = $("#pass-word").val();
            if (password.length > 30 || password.length < 8) {
                layer.alert("?????????8~30???????????????", {icon: 0});
            }
        });
        //????????????
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
                layer.alert('?????????????????????', {icon: 0});
            }else if(username.length < 8){
                layer.alert('?????????????????????8???', {icon: 0});
            }else if(password === undefined || password == null ||password === ""){
                layer.alert('??????????????????', {icon: 0});
            }else if(password.length < 8){
                layer.alert('??????????????????8???', {icon: 0});
            }else if(email !== undefined && email !== null && email !== ""){
                if(!reg.test(email)){
                    layer.alert("?????????????????????",{icon: 0});
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
        });
    });
    
    
    //????????????????????????
    var static = undefined;
    layui.use('dropdown',function () {
        var  dropdown = layui.dropdown

        dropdown.render({
            elem: '#demo2'
            ,data: [{
                title: '????????????'
                ,id: 0
            },{
                title: '?????????'
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