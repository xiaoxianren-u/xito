<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/28
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
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

</head>
<body>


<ul class="layui-nav" lay-bar="disabled">
    <li class="layui-nav-item" lay-unselect="">
        <img id="image" src="//t.cn/RCzsdCq" class="layui-nav-img">
    </li>
    <li class="layui-nav-item  layui-icon">
        <a href="${pageContext.request.contextPath}/">&#xe68e;首页</a>
    </li>
    <li class="layui-nav-item layui-icon" >
        <a href="${pageContext.request.contextPath}/sys/qiantai/geren/">&#xe65c;返回</a>
    </li>
</ul>

<div class="layui-bg-gray">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" style="font-size: 20px;font-weight: bold">推荐内容</div>
                <div class="layui-card-body">
                    <div class="layui-btn-container">
                        <button class="layui-btn layui-btn-primary demo1"  >
                            <span id="bnt-xl">全&nbsp;&nbsp;&nbsp;&nbsp;部</span>
                            <i class="layui-icon layui-icon-down layui-font-12"></i>
                        </button>
                        <div class="layui-btn-group">
                            <button type="button" class="layui-btn layui-btn-sm" id="add"><i class="layui-icon"></i></button>
                        </div>
                    </div>
                    <hr/>
                    
                    <div id="app">
                        <ol>
                            <li v-for="site in sites" class="layui-col-space15">
                                <div class="layui-col-md3">
                                    <div class="layui-panel">
                                        <a href="javascript:;" id="a"  >
                                            <div style="padding: 15px 15px;">
                                                <div class="layui-row layui-col-space10">
                                    
                                                    <div class="layui-col-xs5">
                                                        <div class="grid-demo grid-demo-bg1">
                                                            <div style="width: 100%; height: 200px;background-color: #1E9FFF" id="img">
                                                                <img src="${pageContext.request.contextPath}/static/imager/mo.jpg" style="width: 100%;height: 100%">
                                                            </div>
                                                            <div style="text-align: center">
<%--                                                                <span class="layui-badge layui-bg-green" id="di">3</span>--%>
                                                                <br/>
                                                                <span class="layui-badge-rim" style="height: 20px;font-size: 17px" >算法与数据结构</span>
<%--                                                                <h2 id="h2">java</h2>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="layui-col-xs7">
                                                        <div class="grid-demo">
                                                            <%--                                自动换行--%>
                                                            <div style="height: 100%; width: 100%;word-break:break-all;">
                                                                <br><h2 id="h1" style="text-align: center">撒旦法程序苏大华房间</h2><br><br>
                                                                <span id="text" style="font-size: 15px;">撒旦法程序苏大华房间撒旦法程序苏大华房间撒旦法程序苏大华房间撒旦法程序苏大华房间撒旦法程序苏大华房间</span>
                                                                
                                                            </div>
                                                                <hr/>
                                                                <div class="layui-row" style="text-align: center">
                                                                    <div class="layui-col-xs4">
                                                                        <div class="grid-demo grid-demo-bg1">
<%--                                                                            收藏--%>
                                                                            <i class="layui-icon" style="color: red"  id="sou" aria-hidden="true">&#xe600;</i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="layui-col-xs4">
                                                                        <div class="grid-demo">
<%--                                                                            分分享--%>
                                                                            <i class="layui-icon" style="color: #1E9FFF" id="fen" aria-hidden="true">&#xe641;</i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="layui-col-xs4">
                                                                        <div class="grid-demo grid-demo-bg1">
<%--                                                                            打开--%>
                                                                            <a id="an_d" href="http://www.baidu.com"><i class="layui-icon" style="color: #2b9f2e" id="lian" aria-hidden="true">&#xe64c; </i></a>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                </div>
                                                        </div>
                                                    </div>
                                
                                                </div>
                            
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ol>
                    </div>
                </div>
                <div id="demo1"></div>
            </div>
        </div>
    </div>
</div>

<%--弹出层的表单--%>
<div class="site-text" style="margin: 5%; display: none" id="window"  target="test123">
    <form class="layui-form" id="book" method="post" lay-filter="example">
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> 名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</label>
            <div class="layui-input-block">
                <input type="text" id="text_name" name="text_name" minlength="5" maxlength="20" oninput="wordLeg(this);"  onpropertychange="if(value.length>20) value=value.substr(5,20)" lay-verify="title" autocomplete="off" placeholder="请填写名称，最多20字" class="layui-input">
            </div>
        </div>
    
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> 描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述</label>
            <div class="layui-input-block">
                <textarea type="text" id="text_describe" name="text_describe" minlength="5" maxlength="80" oninput="wordLeg(this);"  onpropertychange="if(value.length>80) value=value.substr(5,80)" lay-verify="title" autocomplete="off" placeholder="请描述你提供的内容，最多50字"  class="layui-textarea"></textarea>
<%--                <input type="text" id="text_describe" name="text_describe" minlength="20" maxlength="50" oninput="wordLeg(this);"  onpropertychange="if(value.length>50) value=value.substr(20,50)" lay-verify="title" autocomplete="off" placeholder="请描述你提供的内容，最多50字" class="layui-input">--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> 链&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接</label>
            <div class="layui-input-block">
                <input type="text" id="text_link" name="text_link" lay-verify="title" autocomplete="off" placeholder="请输入你提供资源的链接，http(s)开头" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> 标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签</label>
            <div class="layui-input-block">
                <select name="text_label" id="text_label" lay-filter="aihao">
                    <option></option>
                    <optgroup label="编程语言">
                        <option value="1-0">Java</option>
                        <option value="1-1">Python</option>
                        <option value="1-2">C/C++</option>
                        <option value="1-3">JavaScript</option>
                        <option value="1-4">PHP</option>
                    </optgroup>
                    <optgroup label="必修基础">
                        <option value="2-0">算法与数据结构</option>
                        <option value="2-1">计算机系统</option>
                        <option value="2-2">计算机网络</option>
                        <option value="2-3">软件开发</option>
                    </optgroup>
                    <option value="3-0">编程框架</option>
                </select>
            </div>
        </div>
<%--    图片上传--%>
        <div style="width: 100%;height: 180px;">
            <div class="layui-row">
                <div class="layui-col-xs6">
                    <div class="grid-demo grid-demo-bg1">
                        <label class="layui-form-label">图&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标</label>
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" id="demo"  style="width: 140px;height: 140px;">
                                <p id="demoText"></p>
                            </div>
                    </div>
                </div>
                <div class="layui-col-xs6">
                    <div class="grid-demo">
                        <br>
                        <button type="button" class="layui-btn" id="test1">上传图片</button>
                        <br> <br> <br> <br>
                        <div style="width: 95px;">
                            <div class="layui-progress layui-progress-big" lay-showpercent="yes" lay-filter="demo">
                                <div class="layui-progress-bar" lay-percent=""></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="layui-form-item">
            <label class="layui-form-label">详&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;细</label>
            <div class="layui-input-block">
                <textarea type="text" id="text_detailed" name="text_detailed" minlength="0" maxlength="300" oninput="wordLeg(this);"  onpropertychange="if(value.length>300) value=value.substr(0,300)" lay-verify="title" autocomplete="off" placeholder="请描述你提供的内容，最多300字"  class="layui-textarea"></textarea>
            </div>
        </div>
        
    </form>
</div>

<div style="text-align: center;width: 100%;height: 50px;background-color: #a1a1a1">
    <%@ include file="../../../head.jsp" %>
</div>

<%--头像--%>
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
                    $("#image").attr("src",res);
                    console.log(res);
                    console.log("---------------------------------------"+username);
                }
            })
        }
    }
    window.onload = image();
</script>
<%--属性鼠标悬停提示--%>
<script>
    $(function () {
        let txt = "收藏";
        $("#sou")
            .hover(function () {             //悬停事件
            const tips = layer.tips(txt, '#sou', {
                tips: [1, '#555555']
                // 上右下左四个方向，通过1-4进行方向设定
            });
            // sleep(2000);
            // layer.close(tips);
        }).click(function () {    //点击事件
            if (txt === "收藏"){
                txt = "取消收藏";
            }else {
                txt = "收藏";
            }
        });
        let fen = "分享";
        $("#fen")
            .hover(function () {             //悬停事件
                const tips = layer.tips(fen, '#fen', {
                    tips: [1, '#555555']
                    // 上右下左四个方向，通过1-4进行方向设定
                });
                // sleep(2000);
                // layer.close(tips);
            }).click(function () {    //点击事件
            
            });
        let lian = "前往";
        $("#lian").hover(function () {             //悬停事件
                const tips = layer.tips(lian, '#lian', {
                    tips: [1, '#555555']
                    // 上右下左四个方向，通过1-4进行方向设定
                });
        });
        
        $("#image").hover(function () {             //悬停事件
            const tips = layer.tips(sessionStorage.getItem("userid")+"欢迎你", '#image', {
                tips: [1, '#555555']
                // 上右下左四个方向，通过1-4进行方向设定
            });
        });
    })
</script>
<%--        字数提示--%>
<script>
    function wordLeg  (obj) {

        const curler = $(obj).val().length;

        const maxlength = $(obj).attr('maxlength');

        const minlength = $(obj).attr('minlength');

        if (curler > maxlength || curler < minlength ) {

            layer.msg('字数请在' + minlength +'~'+maxlength+ '字之间');

        }else {

            $('.text_count').text(curler);

        }
    }

</script>
<%--上传图标--%>
<script>
    layui.use(['upload', 'element', 'layer'], function() {
        var $ = layui.jquery
            , upload = layui.upload
            , element = layui.element
            , layer = layui.layer;

        //常规使用 - 普通图片上传
        // var image = undefined;
        var uploadInst = upload.render({
            elem: '#test1'
            , url: '${pageContext.request.contextPath}/sys/qiantai/geren/image' //改成您自己的上传接口
            , before: function (obj) {
                // 预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                   //图片链接（base64） 回显
                    // console.log(result);
                });
                element.progress('demo', '0%'); //进度条复位
                layer.msg('上传中', {icon: 16, time: 0});
                // console.log(obj);

                
            }
            ,done: function (res) {
                //如果上传失败
                console.log(res);
                if (res.code === 1) {
                    const image = res.data.src;
                    $('#demo').attr('src',image);
                    sessionStorage.setItem("image",image);    //将图标存入session中
                    return layer.msg(res.msg);
                }else {
                    layer.msg(res.msg);
                }
                //上传成功的一些操作
                //……
                $('#demoText').html(''); //置空上传失败的状态
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
            //进度条
            , progress: function (n, elem, e) {
                element.progress('demo', n + '%'); //可配合 layui 进度条元素使用
                if (n == 100) {
                    layer.msg('上传完毕', {icon: 1});
                }
            }
        });
    })
    
</script>
<%--弹出层--%>
<script>

    $("#add").click(function () {

            layer.open({
                type: 1,
                title:"内容推荐表",
                area:["800px","800px"],
                btn: ['提交', '取消'], //可以无限个按钮
                Number:9000000,   //自动关闭的时间
                anim:2,
                maxmin:true, // 最大最小化。
                resize:true, // 是否允许拉伸
                content: $("#window"), //添加表单到弹出层
                yes:function (index,layero){
                    let text_name = $("#text_name").val();   //名称
                    let text_describe = $("#text_describe").val();  //描述
                    let text_link = $("#text_link").val();  // 链接
                    let text_label = $("#text_label").val();  //标签
                    let text_detailed = $("#text_detailed").val();  //详细
                    let text_image = sessionStorage.getItem("image");
                    let user_name = sessionStorage.getItem("userid");
                    // let text_image = $("#demo").val();
                    if (text_image === "1"){
                        console.log("==================");
                        text_image ="/static/imager/mo.jpg";
                    }
                    if (text_name === "" || text_name === null || text_name === undefined){
                        layer.msg("标红的不能为空！！");
                    }else if (text_describe === "" || text_describe === null || text_describe === undefined){
                        layer.msg("标红的不能为空！！");
                    }else if (text_link === "" || text_link === null || text_link === undefined){
                        layer.msg("标红的不能为空！！");
                    }else if (text_label=== "" || text_label === null || text_label === undefined){
                        layer.msg("标红的不能为空！！");
                    }else {
                        console.log(
                            JSON.stringify(
                                {
                                    text_name:text_name,
                                    text_describe:text_describe,
                                    text_link:text_link ,
                                    text_label:text_label ,
                                    text_detailed:text_detailed ,
                                    text_image:text_image ,
                                    user_name:text_name,
                                }
                            )
                        )
                        $.ajax({
                            type: "post",
                            url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend",
                            async: true,
                            dataType: "json",
                            data: JSON.stringify({
                                text_name:text_name,
                                text_describe:text_describe,
                                text_link:text_link,
                                text_label:text_label,
                                text_detailed:text_detailed,
                                text_image:text_image,
                                user_name:user_name,
                            }),
                            contentType: "application/json;charset=UTF-8",
                            success: function (data) {
                                console.log(data +"++++++++++++++++");
                                if(data.msg===true){
                                    layer.msg("提交成功请等待管理员审核",{icon : 6, offset : "auto",time:2000});
                                    sessionStorage.setItem("image","1");
                                    setTimeout(function () {
                                        window.location.reload();
                                    },2100);
                                }
                                if (data.msg === false){
                                    layer.alert("修改失败",5);
                                }
                                console.log(data.data);
                            }
                        })
                    }
                    
                },
            });
        // }


    })
</script>

</body>

<script>

    layui.use(function() {
        var dropdown = layui.dropdown,
            layer = layui.layer,
            laypage = layui.laypage
        
        //初演示
        dropdown.render({
            elem: '.demo1'
            , data: [{
                title: '全&nbsp;&nbsp;&nbsp;&nbsp;部'
                , id: 100
            }, {
                title: '审核中'
                , id: 101
            }, {
                title: '已发布'
                , id: 102
            }, {
                title: '拒&nbsp;&nbsp;&nbsp;&nbsp;绝'
                , id: 103
            }]
            , click: function (obj) {
                $("#bnt-xl").html(obj.title);
                layer.tips(obj.title, this.elem, {tips: [1, '#5FB878']})
            }
        });

        //分页
        laypage.render({
            elem: 'demo1'
            ,count: 71 //数据总数
            ,jump: function(obj){
                console.log(obj)
            }
        });

    })



</script>

<script>

    let username = sessionStorage.getItem("userid");
    $.ajax({
        type: "post",
        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/list",
        async: true,
        dataType: "json",
        data: JSON.stringify({
            username:username,
        }),
        contentType: "application/json;charset=UTF-8",
        success: function (data) {
            console.log(data);
        }
    });
    
</script>
</html>