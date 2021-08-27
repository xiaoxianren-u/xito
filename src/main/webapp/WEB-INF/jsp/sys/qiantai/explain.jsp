<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/8/27
  Time: 15:27
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font/iconfont.css">
    <script src="${pageContext.request.contextPath}/static/js/vue.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/download.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/download.jpg" type="image/x-icon" />
    <title>小鸟编程</title>


</head>

<body style="background-color: #F0F2F5">
<br/>
<br/>
<br/>
<br/>
<div style="margin: 0 auto; max-width: 1530px;">
    
    <div class="layui-row" >
        <div class="layui-col-xs9" >
            <div class="grid-demo grid-demo-bg1">
                <div class="layui-bg-gray" >
                    <div class="layui-row ">
                        <div class="layui-col-md12">
                            <div class="layui-card">
                                <div class="layui-card-header" style="color: #0C0C0C;font-size: 25px;height: 45px">详细信息</div>
                                <div class="layui-card-body" style="height: 550px">
                                    
                                    <div class="layui-row" style="margin: 0 auto;color: white">
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1">3/12</div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo" style="text-align: center">
                                                <img id="text_image" style="height: 150px;width: 150px;" alt="">
                                                <br><br>
                                                <samp style="color: #0C0C0C;font-size: 30px;font-weight: bolder" id="text_name"></samp>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1">3/12</div>
                                        </div>
                                        
                                    </div>
                                    <br>
                                    <div class="layui-row">
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1" style="color: #F0F2F5">3/12</div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo"  style="text-align: center">
                                                <span class="layui-badge " style="background-color: rgb(170, 170, 170);" title="浏览量" ><i class="iconfont">&#xe640;</i>&nbsp;&nbsp;<span id="text_collect"></span></span>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="layui-badge" style="background-color: red" title="收藏量"><i class="layui-icon" style="font-size: 10px">&#xe68c;</i>&nbsp;&nbsp;<span id="text_read"></span></span>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1" style="color: #F0F2F5">s</div>
                                        </div>
    
                                    </div>
                                    <br/>
                                    <div class="layui-row">
                                        <div class="layui-col-xs12" style="text-align: center">
                                            <div class="grid-demo grid-demo-bg1"><span id="text_describe"></span></div>
                                        </div>
                                    </div>
                                    <div style="height: 70px;">
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-xs12" style="text-align: center">
                                            <div class="grid-demo grid-demo-bg1">
                                                <table>
                                                    <tr>
                                                        <td style="width: 50px;height: 30px">链接:</td>
                                                        <td><a id="text_link" target="_blank"><i id="text_link_li" style="color: #1E9FFF"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="margin-bottom: 0">详细:</td>
                                                        <td>
                                                            <span id="text_detailed"></span>
                                                         </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 40px">时间:</td>
                                                        <td><span id="text_date"></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>推者:</td>
                                                        <td><span id="name"></span></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="background-color: #F0F2F5;height: 30px"></div>
                    <div class="layui-row ">
                        <div class="layui-col-md12">
                            <div class="layui-card">
                                <div class="layui-card-header" style="color: #0C0C0C;font-size: 15px;height: 35px">评论</div>
                                <div class="layui-card-body">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-xs1">
            <div class="grid-demo">6/12</div>
        </div>
        <div class="layui-col-xs2">
            <div class="grid-demo">6/12</div>
        </div>
    </div>
    

</div>

<script>
    const text_id = window.location.href.split("?")[1].split("=")[1];

    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/sys/qiantai/geren/explain/data?text_id="+text_id,
        async: true,
        dataType: "json",
        contentType: "application/json;charset=UTF-8",
        success: function (res) {
            $("#name").html(res.name);
            $("#text_date").html(res.text_date);
            $("#text_detailed").html(res.text_detailed);
            $("#text_link_li").html(res.text_link)
            $("#text_link").attr("href",res.text_link);
            $("#text_describe").html(res.text_describe)
            $("#text_read").html(res.text_read);
            $("#text_collect").html(res.text_collect);
            $("#text_image").attr("src",res.text_image);
            $("#text_name").html(res.text_name)
            
        }
    });
    
    

</script>
</body>
</html>
