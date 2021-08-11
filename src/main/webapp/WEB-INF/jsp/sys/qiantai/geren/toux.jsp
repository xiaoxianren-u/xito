<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/8/10
  Time: 14:22
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
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/download.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/download.jpg" type="image/x-icon" />
    
    <title>Title</title>
</head>
<body>


<div class="layui-bg-gray">
    <div class="layui-row ">
        <div class="layui-col-md6">
            <div class="layui-panel">
                <div>
                    
                    <div class="layui-upload-drag" id="test10">
                        <i class="layui-icon"></i>
                        <p>点击上传，或将文件拖拽到此处</p>
                        <div class="layui-hide" id="uploadDemoView">
                            <hr>
                            <img src="" alt="上传成功后渲染" style="max-width: 196px">
                        </div>
                    </div>
                    <br>
                    <form class="layui-form" action="">
                        
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                            
                            </div>
                        </div>
                    </form>
                    <%--                    <img id="image" style="height: 200px;width: 200px">--%>
                </div>
            </div>
        </div>
    </div>
</div>


<script>


    layui.use(['upload', 'element', 'layer', 'form'], function () {
        var $ = layui.jquery
            , upload = layui.upload
            , layer = layui.layer
            , form = layui.form;
        var imagePath = undefined;
        //拖拽上传 上传图片
        upload.render({

            elem: '#test10'
            // field:'file'
            , url: '/sys/qiantai/geren/image' //改成您自己的上传接口
            , done: function (res) {

                if (res.code == 1) {
                    layer.msg(res.msg);
                    imagePath = res.data.src;
                    // $("#image").attr("src",imagePath);
                    layui.$('#uploadDemoView').removeClass('layui-hide').find('img').attr('src', imagePath);
                    console.log(res.data.src);
                } else {
                    layer.msg(res.msg);
                }

                // layui.$('#uploadDemoView').removeClass('layui-hide').find('img').attr('src', res.files.file);
                console.log(res)
            }
        });

        //监听提交  保存图片路径
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            if (imagePath === undefined) {
                layer.alert("请先上传图片，在提交", {icon: 5});
            } else {
                console.log(imagePath);
                let username = sessionStorage.getItem("userid");
                console.log(username);
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/sys/qiantai/geren/imager",
                    async: true,
                    dataType: "json",
                    data: JSON.stringify({username: username, image: imagePath}),
                    contentType: "application/json;charset=UTF-8",
                    success: function (data) {
                        layer.alert(data.msg,{icon: 6});
                        console.log(data);
                    }
                })
            }
            return false;
        });
    })
</script>

</body>
</html>
