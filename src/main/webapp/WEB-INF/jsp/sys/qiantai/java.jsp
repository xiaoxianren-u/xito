<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/26
  Time: 22:49
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
    <title>Document</title>
    <style>
        .dui-container{
            position: relative;
            min-height: 100%;
        }
        main {
            padding-bottom: 930px;
        }
        header, footer{
            /*line-height: 100px;*/
            /*height: 100px;*/
        }
        footer{
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
</head>
<body>




<div class="dui-container" style="width: 99%;text-align: center;" >
    <header style="color: #e5e4e4">Header</header>
    <main><div id="view"></div></main>
    <footer><div id="demo1" style="background-color: white"></div></footer>
</div>


</body>

<%--内容面板--%>
<script id="app" type="text/html">
    <ol>
        {{# layui.each(d.list, function(index, item){ }}
        <li v-for="site in sites" class="layui-col-space15">
            <div class="layui-col-md3">
                <div class="layui-panel">
                    
                    <div style="padding: 15px 15px;">
                        <div class="layui-row layui-col-space10">
                            <a href="${pageContext.request.contextPath}/sys/qiantai/explain?text_id={{item.text_id}}" target="_blank">
                                <div class="layui-col-xs5">
                                    <div class="grid-demo grid-demo-bg1">
                                        <div style="width: 100%; height: 195px;background-color: #1E9FFF"
                                             id="img">
                                            <img src={{item.text_image}} style="width: 100%;height: 100%">
                                        </div>
                                        
                                        <div style="text-align: center">
                                            <%--                                                                <span class="layui-badge layui-bg-green" id="di">3</span>--%>
                                            <br/>
                                            <hr/>
                                            <span class="layui-badge-rim" style="color: #1E9FFF; height: 20px;font-size: 17px">{{item.text_label}}</span>
                                            <%--                                                                <h2 id="h2">java</h2>--%>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="layui-col-xs7">
                                <div class="grid-demo">
                                    <%--                                自动换行--%>
                                        <a href="${pageContext.request.contextPath}/sys/qiantai/explain?text_id={{item.text_id}}" target="_blank">
                                        <div style="height: 190px; width: 100%;word-break:break-all;text-align: center;">
                                            <br>
                                            <h2 id="h1" style="text-align: center">{{item.text_name}}</h2><br>
                                            <span id="text" style="font-size: 15px;text-align: center">{{item.text_describe}}</span>
                                        </div>
                                    </a>
                                    <hr/>
                                    <div class="layui-row" style="text-align: center">
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1" >
                                                <%--收藏--%>
                                                <%--                                                {{# if(item.text_collect=== 0){ }}--%>
                                                <i class="layui-icon" title="收藏"
                                                   aria-hidden="true" id="sou" value={{item.text_id}} value1={{item.text_collect}}>&#xe600;</i>
                                                <%--                                                {{# } else { }}--%>
                                                <%--                                                <i class="layui-icon" title="取消收藏"--%>
                                                <%--                                                   aria-hidden="true" style="color: red" id="sou"  value={{item.text_id}} value1={{item.text_collect}}>&#xe600;</i>--%>
                                                <%--                                                {{# } }}--%>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo">
                                                <%--                                                                            分分享--%>
                                                <%--                                                        <a  href="javascript:;">--%>
                                                <i class="layui-icon" title="分享"
                                                   style="color: #1E9FFF" id="fen"   value={{item.text_collect}}
                                                   aria-hidden="true">&#xe641;</i>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1">
                                                <%--                                                                            打开--%>
                                                <a id="an_d" href={{item.text_link}} target="_blank"><i
                                                        class="layui-icon" title="访问"
                                                        style="color: #2b9f2e" id="lian"
                                                        aria-hidden="true">&#xe64c; </i>
                                                </a>
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
        {{# }); }}
        {{# if(d.list.length === 0){ }}
        无数据
        {{# } }}
    </ol>
</script>
<%--显示内容面板--%>
<script>
    <%--    实现加载动画--%>
    function loading(msg) {
        layer.msg(msg, {
            icon: 16,
            shade: [0.3, '#000005'],//遮罩的颜色与透明度
            time: false  //取消自动关闭
        })
    };
    var count = 0;
    let username = sessionStorage.getItem("userid");
    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/countData?text_label="+"Java",
        async: true,
        dataType: "json",
        contentType: "application/json;charset=UTF-8",
        success: function (res) {
            count = res.count;
            console.log(count + "dffd");
            loading("加载中");    //开始加载
        }
    })

    function send(){
        layui.use('laytpl', function () {
            var laytpl = layui.laytpl,
                laypage = layui.laypage

            var list = null;
            let username = sessionStorage.getItem("userid");
            // 获取内容总数

            //分页
            laypage.render({
                elem: 'demo1'
                ,count:count
                ,limit:12
                ,layout: [ 'prev', 'page', 'next',  'refresh', 'skip','count']
                // ,limits:[12]
                , jump: function (obj) {
                    // this.count = 22;
                    console.log(obj);
                    let limit =  obj.limit;
                    let curr = obj.curr;
                    console.log(obj.limit);
                    $.ajax({
                        type: "get",
                        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/listData?text_label="+"Java"+"&curr="+curr+"&limit="+limit,
                        async: true,
                        dataType: "json",
                        contentType: "application/json;charset=UTF-8",
                        success: function (res) {
                            list = res.data;
                            var data = {
                                "list": list,
                            }
                            console.log(data);
                            layer.closeAll();   //结束加载
                            layer.msg("欢迎使用",{icon:6});
                            var getTpl = app.innerHTML
                                , view = document.getElementById('view');
                            laytpl(getTpl).render(data, function (html) {
                                view.innerHTML = html;
                            });

                        }
                    });
                }
            });
        })
    }

    setTimeout(send,1000)  //延迟0.5秒执行

</script>
<%--点击事件--%>
<script>

    $(document).on('click', '#sou', function() {
        layer.msg('响应点击事件');
        let text_id = $(this).attr("value");
        let b = $(this).attr("value1");
        let username = sessionStorage.getItem("userid");
        //收藏
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/cllect?text_id="+text_id+"&username="+username,
            async: true,
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            success: function (res) {
                if (res === 1){
                    console.log(res);
                    layer.msg("已为你收藏",{icon:6});
                }
                if (res === 0){
                    layer.msg("你已收藏过",{icon:6});
                }
                if (res === 2){
                    layer.msg("无法收藏",{icon:5});
                }
            }
        })
    })
        .on('click', '#fen', function() {
            layer.msg('响sss点击事件');
        })
    //    动态悬停
    // .on('mouseenter', '#fen', function() {
    //     let a = $(this).attr("value");
    //     console.log(a);
    //         layer.msg("ssssssssssssssssss");
    //
    //     })

    ;



</script>
</html>