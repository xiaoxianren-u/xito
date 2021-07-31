<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/28
  Time: 20:40
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
</head>
<body>
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
                    </div>

                    <hr/>
    
    
                    <div id="app">
                        <ol>
                            <li v-for="site in sites" class="layui-col-space15">
                                <div class="layui-col-md3">
                                    <div class="layui-panel">
                                        <a href="javascript:;" id="a"  >
                                            <div style="padding: 15px 15px;" id="">
                                                <div class="layui-row layui-col-space10">
                                    
                                                    <div class="layui-col-xs5">
                                                        <div class="grid-demo grid-demo-bg1">
                                                            <div style="width: 100%; height: 200px;background-color: #1E9FFF" id="img">
                                                                <img src="${pageContext.request.contextPath}/static/imager/download.jpg" style="width: 100%;height: 100%">
                                                            </div>
                                                            <div style="text-align: center">
                                                                <span class="layui-badge layui-bg-green" id="di">3</span>
                                                                <h2 id="h2">java</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="layui-col-xs7">
                                                        <div class="grid-demo">
                                                            <%--                                自动换行--%>
                                                            <div style="height: 100%; width: 100%;word-break:break-all;">
                                                                <br><h1 id="h1">java程序</h1><br><br>
                                                                <span id="text" style="font-size: 20px;">nisdfkjsdifenisdnfienisdnfiesdjdfgdfgsgdfgdfgdfgf</span>
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

    new Vue({
        el: '#app',
        data: {
            sites: [
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Runoob' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Runoob' },
                { name: 'Taobao' }
            ]
        }
    })


</script>
</html>