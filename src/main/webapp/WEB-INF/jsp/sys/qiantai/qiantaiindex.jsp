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
</head>
<body>
<div class="layui-bg-gray" style="padding: 30px;">
    <div class="layui-row " id="add">
        <div id="app">
            <ol>
                <li v-for="site in sites" class="layui-col-space15">
                    <div class="layui-col-md3" >
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
</div>



</body>


<script>
    new Vue({
        el: '#app',
        data: {
            sites: [
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Runoob' },
                { name: 'Google' },
                { name: 'Taobao' }
            ]
        }
    })
    
    
    
</script>


</html>