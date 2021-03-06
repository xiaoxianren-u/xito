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
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg"  mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon"/>
    <style>
        .dui-container{
            position: relative;
            min-height: 100%;
        }
        main {
            padding-bottom: 920px;
        }
        header, footer{
            line-height: 0px;
            height: 20px;
        }
        footer{
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
    <title>????????????</title>
</head>
<body>


<%--<ul class="layui-nav" lay-bar="disabled">--%>
<%--    <li class="layui-nav-item" lay-unselect="">--%>
<%--        <img id="image" src="${pageContext.request.contextPath}/static/imager/download.jpg" class="layui-nav-img">--%>
<%--    </li>--%>
<%--    <li class="layui-nav-item  layui-icon">--%>
<%--        <a href="${pageContext.request.contextPath}/">&#xe68e;??????</a>--%>
<%--    </li>--%>
<%--    <li class="layui-nav-item layui-icon">--%>
<%--        <a href="${pageContext.request.contextPath}/sys/qiantai/geren/">&#xe65c;??????</a>--%>
<%--    </li>--%>
<%--</ul>--%>

<div class="layui-bg-gray" style="width: 99%;">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" style="font-size: 20px;font-weight: bold">????????????</div>
                <div class="layui-card-body">
                    <div class="layui-btn-container">
                        <button class="layui-btn layui-btn-primary demo1">
                            <span id="bnt-xl">???&nbsp;&nbsp;&nbsp;&nbsp;???</span>
                            <i class="layui-icon layui-icon-down layui-font-12"></i>
                        </button>
                        <div class="layui-btn-group">
                            <button type="button" class="layui-btn layui-btn-sm" id="add"><i class="layui-icon">???</i></button>
                            
                        </div>
<%--                        ??????--%>

                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<div class="dui-container" style="width: 99%;text-align: center">
<%--??????--%>
    <main><div id="view"></div></main>
        <%--                        ??????--%>
    <footer>
        <div class="layui-bg-gray">
            <div class="layui-row">
                <div class="layui-col-md12">
                    <div class="layui-panel">
                        <div><div id="demo1"></div></div>
                    </div>
                </div>
            </div>
        </div>
        
        </footer>
</div>


<%--??????????????????--%>
<div class="site-text" style="margin: 5%; display: none" id="window" target="test123">
    <form class="layui-form" id="book" method="post" lay-filter="example">
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> ???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <input type="text" id="text_name" name="text_name" minlength="1" maxlength="20" oninput="wordLeg(this);"
                       onpropertychange="if(value.length>20) value=value.substr(1,20)" lay-verify="title"
                       autocomplete="off" placeholder="????????????????????????20???" class="layui-input">
            </div>
        </div>
        
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> ???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <textarea type="text" id="text_describe" name="text_describe" minlength="1" maxlength="80"
                          oninput="wordLeg(this);" onpropertychange="if(value.length>80) value=value.substr(1,80)"
                          lay-verify="title" autocomplete="off" placeholder="????????????????????????????????????50???"
                          class="layui-textarea"></textarea>
                <%--                <input type="text" id="text_describe" name="text_describe" minlength="20" maxlength="50" oninput="wordLeg(this);"  onpropertychange="if(value.length>50) value=value.substr(20,50)" lay-verify="title" autocomplete="off" placeholder="????????????????????????????????????50???" class="layui-input">--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> ???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <input type="text" id="text_link" src="/" name="text_link" lay-verify="title" autocomplete="off"
                       placeholder="????????????????????????????????????http(s)??????" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><span style="color: red;">*</span> ???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <select name="text_label" id="text_label" lay-filter="aihao">
                    <option></option>
                    <optgroup label="????????????">
                        <option value="Java">Java</option>
                        <option value="Python">Python</option>
                        <option value="C/C++">C/C++</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="PHP">PHP</option>
                    </optgroup>
                    <optgroup label="????????????">
                        <option value="?????????????????????">?????????????????????</option>
                        <option value="???????????????">???????????????</option>
                        <option value="???????????????">???????????????</option>
                        <option value="????????????">????????????</option>
                    </optgroup>
                    <option value="????????????">????????????</option>
                </select>
            </div>
        </div>
        <%--    ????????????--%>
        <div style="width: 100%;height: 180px;">
            <div class="layui-row">
                <div class="layui-col-xs6">
                    <div class="grid-demo grid-demo-bg1">
                        <label class="layui-form-label">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
                        <div class="layui-upload-list">
                            <img class="layui-upload-img" id="demo" src="/static/imager/mo.jpg" style="width: 140px;height: 140px;">
                            <p id="demoText"></p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs6">
                    <div class="grid-demo">
                        <br>
                        <button type="button" class="layui-btn" id="test1">???????????????</button>
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
            <label class="layui-form-label">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <textarea type="text" id="text_detailed" name="text_detailed" minlength="0" maxlength="300"
                          oninput="wordLeg(this);" onpropertychange="if(value.length>300) value=value.substr(0,300)"
                          lay-verify="title" autocomplete="off" placeholder="????????????????????????????????????300???"
                          class="layui-textarea"></textarea>
            </div>
        </div>
    
    </form>
</div>

<%--<div style="text-align: center;width: 100%;height: 50px;background-color: #a1a1a1">--%>
<%--    <%@ include file="../../../head.jsp" %>--%>
<%--</div>--%>
<%--?????????????????????--%>
<script id="app" type="text/html">
    <ol>
        {{# layui.each(d.list, function(index, item){ }}
    
        {{# if(item.text_status=== 0){ }}
        <li v-for="site in sites" class="layui-col-space15">
            <div class="layui-col-md3">
                <div class="layui-panel">
                    
                    <div style="padding: 15px 15px;">
                        <div class="layui-row layui-col-space10">
                            <a href="javascript:;">
                                <div class="layui-col-xs5">
                                    <div class="grid-demo grid-demo-bg1">
                                        <div style="width: 100%; height: 195px;background-color: #1E9FFF" id="img">
                                            <img src={{item.text_image}} style="width: 100%;height: 100%">
                                        </div>
                                        <div style="text-align: center">
                                            <%--                                                                <span class="layui-badge layui-bg-green" id="di">3</span>--%>
                                            <br/>
                                                <hr>
                                            <span class="layui-badge-rim" style="color: #1E9FFF; height: 20px;font-size: 17px">?????????</span>
                                            <%--                                                                <h2 id="h2">java</h2>--%>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="layui-col-xs7">
                                <div class="grid-demo">
                                    <%--                                ????????????--%>
                                    <a href="javascript:;">
                                        <div style="height:190px; width: 100%;word-break:break-all;text-align: center;">
                                            <br>
                                            <h2  style="text-align: center">{{item.text_name}}</h2><br>
                                            <span  style="font-size: 15px;text-align: center">{{item.text_describe}}</span>
                                        </div>
                                    </a>
                                    <hr/>
                                        <div class="layui-row" style="text-align: center">
                                        
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo">
                                                <i class="layui-icon" title="????????????" aria-hidden="true">&#xe641;</i>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1">
                                                <i class="layui-icon" title="????????????" aria-hidden="true">&#xe64c; </i>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1" >
                                                <i class="layui-icon" title="????????????" style="color: red;"
                                                   aria-hidden="true" id="sou" value={{item.text_id}} >&#x1007;</i>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        {{# } else if(item.text_status === 1){ }}

        <li v-for="site in sites" class="layui-col-space15">
            <div class="layui-col-md3">
                <div class="layui-panel">
                
                    <div style="padding: 15px 15px;">
                        <div class="layui-row layui-col-space10">
                            <a href="javascript:;">
                                <div class="layui-col-xs5">
                                    <div class="grid-demo grid-demo-bg1">
                                        <div style="width: 100%; height: 195px;background-color: #1E9FFF" id="img">
                                            <img src={{item.text_image}} style="width: 100%;height: 100%">
                                        </div>
                                        <div style="text-align: center">
                                            <%--                                                                <span class="layui-badge layui-bg-green" id="di">3</span>--%>
                                            <br/>
                                            <hr>
                                            <span class="layui-badge-rim" style="color: red; height: 20px;font-size: 17px">?????????</span>
                                            <%--                                                                <h2 id="h2">java</h2>--%>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="layui-col-xs7">
                                <div class="grid-demo">
                                    <%--                                ????????????--%>
                                    <a href="javascript:;" >
                                        <div style="height: 190px; width: 100%;word-break:break-all;text-align: center;">
                                            <br>
                                            <h2 style="text-align: center">{{item.text_name}}</h2><br>
                                            <span  style="font-size: 15px;text-align: center">{{item.text_describe}}</span>
                                        </div>
                                    </a>
                                    <hr/>
                                    <div class="layui-row" style="text-align: center">
                                    
<%--                                        <div class="layui-col-xs4">--%>
<%--                                            <div class="grid-demo">--%>
<%--                                                <i class="layui-icon" title="??????"--%>
<%--                                                   style="color: #1E9FFF" id="fen"   value={{item.text_collect}}--%>
<%--                                                   aria-hidden="true">&#xe641;</i>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs4">--%>
<%--                                            <div class="grid-demo grid-demo-bg1">--%>
<%--                                                &lt;%&ndash;                                                                            ??????&ndash;%&gt;--%>
<%--                                                <a id="an_d" href={{item.text_link}} target="_blank"><i--%>
<%--                                                        class="layui-icon" title="??????"--%>
<%--                                                        style="color: #2b9f2e" id="lian"--%>
<%--                                                        aria-hidden="true">&#xe64c; </i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--    --%>
                                        <div class="layui-col-xs12">
                                            <div class="grid-demo grid-demo-bg1" style="text-align: center">
                                                <i class="layui-icon" title="??????" style="color: red;"
                                                   aria-hidden="true" id="sou" value={{item.text_id}}>&#x1007;</i>
                                            </div>
                                        </div>
                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        {{# } else { }}
        <li v-for="site in sites" class="layui-col-space15">
            <div class="layui-col-md3">
                <div class="layui-panel">
                
                    <div style="padding: 15px 15px;">
                        <div class="layui-row layui-col-space10">
                            <a href={{item.text_link}} target="_blank">
                                <div class="layui-col-xs5">
                                    <div class="grid-demo grid-demo-bg1">
                                        <div style="width: 100%; height: 195px;background-color: #1E9FFF" id="img">
                                            <img src={{item.text_image}} style="width: 100%;height: 100%">
                                        </div>
                                        <div style="text-align: center">
                                            <%--                                                                <span class="layui-badge layui-bg-green" id="di">3</span>--%>
                                            <br/>
                                            <hr>
                                            <span class="layui-badge-rim" style="color: #37b54c; height: 20px;font-size: 17px">?????????</span>
                                            <%--                                                                <h2 id="h2">java</h2>--%>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="layui-col-xs7">
                                <div class="grid-demo">
                                    <%--                                ????????????--%>
                                    <a href={{item.text_link}} target="_blank">
                                        <div style="height:190px; width: 100%;word-break:break-all;text-align: center;">
                                            <br>
                                            <h2 id="h1" style="text-align: center">{{item.text_name}}</h2><br>
                                            <span id="text" style="font-size: 15px;text-align: center">{{item.text_describe}}</span>
                                        </div>
                                    </a>
                                    <hr/>
                                
                                    <div class="layui-row" style="text-align: center">
                                    
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo">
                                                <i class="layui-icon" title="??????"
                                                   style="color: #1E9FFF" id="fen"   value={{item.text_collect}}
                                                   aria-hidden="true">&#xe641;</i>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1">
                                                <%--                                                                            ??????--%>
                                                <a id="an_d" href={{item.text_link}} target="_blank"><i
                                                        class="layui-icon" title="??????"
                                                        style="color: #2b9f2e" id="lian"
                                                        aria-hidden="true">&#xe64c; </i></a>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs4">
                                            <div class="grid-demo grid-demo-bg1" >
                                                <i class="layui-icon" title="??????" style="color: red;"
                                                   aria-hidden="true" id="sou" value={{item.text_id}}>&#x1007;</i>
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
        {{#  } }}
        {{# }); }}
        {{# if(d.list.length === 0){ }}
        ?????????
        {{# } }}
    </ol>
</script>


<%--??????--%>
<script>
    function image() {
        if (sessionStorage.getItem("userid") !== undefined && sessionStorage.getItem("userid") !== null && sessionStorage.getItem("userid") !== "") {
            let username = sessionStorage.getItem("userid");
            $.ajax({
                type: 'post',
                url: "${pageContext.request.contextPath}/sys/qiantai/geren/indimage",
                async: true,
                dataType: 'json',
                data: JSON.stringify({username: username}),
                contentType: "application/json;charset=UTF-8",
                success: function (res) {
                   if(res !== null){
                       $("#image").attr("src", res);
                   }
                }
            })
        }
    }
    window.onload = image();
</script>
<%--????????????????????????--%>
<script>
    $(function () {
        $("#image").hover(function () {             //????????????
            const tips = layer.tips(sessionStorage.getItem("userid") + "?????????", '#image', {
                tips: [1, '#555555']
                // ?????????????????????????????????1-4??????????????????
            });
        });
    })
</script>
<%--  ????????????--%>
<script>
    function wordLeg(obj) {

        const curler = $(obj).val().length;

        const maxlength = $(obj).attr('maxlength');

        const minlength = $(obj).attr('minlength');

        if (curler > maxlength || curler < minlength) {

            layer.msg('????????????' + minlength + '~' + maxlength + '?????????');

        } else {

            $('.text_count').text(curler);

        }
    }

</script>
<%--????????????--%>
<script>
    layui.use(['upload', 'element', 'layer'], function () {
        var $ = layui.jquery
            , upload = layui.upload
            , element = layui.element
            , layer = layui.layer;

        //???????????? - ??????????????????
        // var image = undefined;
        var uploadInst = upload.render({
            elem: '#test1'
            , url: '${pageContext.request.contextPath}/sys/qiantai/geren/image' //??????????????????????????????
            , before: function (obj) {
                // ????????????????????????????????????ie8
                obj.preview(function (index, file, result) {
                    //???????????????base64??? ??????
                });
                element.progress('demo', '0%'); //???????????????
                layer.msg('?????????', {icon: 16, time: 0});
            }
            , done: function (res) {
                //??????????????????
                if (res.code === 1) {
                    const image = res.data.src;
                    $('#demo').attr('src', image);
                    sessionStorage.setItem("image", image);    //???????????????session???
                    return layer.msg(res.msg);
                } else {
                    layer.msg(res.msg);
                }
                //???????????????????????????
                $('#demoText').html(''); //???????????????????????????
            }
            , error: function () {
                //????????????????????????????????????
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">????????????</span> <a class="layui-btn layui-btn-xs demo-reload">??????</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
            //?????????
            , progress: function (n, elem, e) {
                element.progress('demo', n + '%'); //????????? layui ?????????????????????
                if (n == 100) {
                    layer.msg('????????????', {icon: 1});
                }
            }
        });
    })

</script>
<%--?????????--%>
<script>

    $("#add").click(function () {

        layer.open({
            type: 1,
            title: "???????????????",
            area: ["800px", "800px"],
            btn: ['??????', '??????'], //?????????????????????
            Number: 9000000,   //?????????????????????
            anim: 2,
            maxmin: true, // ??????????????????
            resize: true, // ??????????????????
            content: $("#window"), //????????????????????????
            yes: function (index, layero) {
                let text_name = $("#text_name").val();   //??????
                let text_describe = $("#text_describe").val();  //??????
                let text_link = $("#text_link").val();  // ??????
                let text_label = $("#text_label").val();  //??????
                let text_detailed = $("#text_detailed").val();  //??????
                let text_image = "/static/imager/mo.jpg";
                text_image = sessionStorage.getItem("image");
                let user_name = sessionStorage.getItem("userid");
                if (text_image === "1" || text_image === null || text_image === undefined || text_image === "") {
                    text_image = "/static/imager/mo.jpg";
                }if (text_name === "" || text_name === null || text_name === undefined) {
                    layer.msg("???????????????????????????");
                } else if (text_describe === "" || text_describe === null || text_describe === undefined) {
                    layer.msg("???????????????????????????");
                } else if (text_link === "" || text_link === null || text_link === undefined) {
                    layer.msg("???????????????????????????");
                } else if (text_label === "" || text_label === null || text_label === undefined) {
                    layer.msg("???????????????????????????");
                } else {
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend",
                        async: true,
                        dataType: "json",
                        data: JSON.stringify({
                            text_name: text_name,
                            text_describe: text_describe,
                            text_link: text_link,
                            text_label: text_label,
                            text_detailed: text_detailed,
                            text_image: text_image,
                            user_name: user_name,
                        }),
                        contentType: "application/json;charset=UTF-8",
                        success: function (data) {
                            // console.log(data + "++++++++++++++++");
                            if (data.msg === true) {
                                layer.msg("????????????????????????????????????", {icon: 6, offset: "auto", time: 2000});
                                sessionStorage.setItem("image", "1");
                                setTimeout(function () {
                                    window.location.reload();  //????????????
                                }, 2100);
                            }
                            if (data.msg === false) {
                                layer.alert("????????????", 5);
                            }
                            // console.log(data.data);
                        }
                    })
                }

            },
        });
    })
</script>

</body>


<%--????????????--%>
<script>
<%--    ??????????????????--%>
    function loading(msg) {
        layer.msg(msg, {
            icon: 16,
            shade: [0.8, '#000005'],//???????????????????????????
            time: false  //??????????????????
        })
    };
    
    var count = 0;
    let username = sessionStorage.getItem("userid");
    let text_status = 3;
            $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/count?username="+username+"&text_status="+text_status,
            async: true,
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            success: function (res) {
               count = res.count;
                loading("?????????");    //????????????
            }
        })

    function send(){
        layui.use('laytpl', function () {
            var laytpl = layui.laytpl,
                laypage = layui.laypage
            var list = null;
            // ??????????????????
            //??????
            laypage.render({
                elem: 'demo1'
                ,count:count
                ,limit:12
                ,layout: [ 'prev', 'page', 'next', 'refresh', 'skip','count']
                , jump: function (obj) {
                    let limit =  obj.limit;   //??????
                    let curr = obj.curr;     //??????
                    $.ajax({
                        type: "get",
                        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/list?username="+username+"&curr="+curr+"&limit="+limit+"&text_status="+text_status,
                        async: true,
                        dataType: "json",
                        contentType: "application/json;charset=UTF-8",
                        success: function (res) {
                            list = res.data;
                            var data = {"list": list,}
                            layer.closeAll();   //????????????
                            layer.msg("????????????",{icon:6});
                            var getTpl = app.innerHTML
                                , view = document.getElementById('view');
                            laytpl(getTpl).render(data, function (html) {
                                view.innerHTML = html;
                            });
                        }
                    });
                }
            })
        })
    }
    setTimeout(send,1000)  //??????0.5?????????
</script>

<script>
    layui.use(function () {
        var  dropdown = layui.dropdown
        dropdown.render({
            elem: '.demo1'
            , data: [{
                title: '???&nbsp;&nbsp;&nbsp;&nbsp;???'
                , id: 3
            }, {
                title: '?????????'
                , id: 0
            }, {
                title: '?????????'
                , id: 2
            }, {
                title: '???&nbsp;&nbsp;&nbsp;&nbsp;???'
                , id: 1
            }]
            , click: function (obj) {
                $("#bnt-xl").html(obj.title);
                layer.tips(obj.title, this.elem, {tips: [1, '#5FB878']})
                text_status = obj.id;
                $.ajax({
                    type: "get",
                    url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/count?username="+username+"&text_status="+text_status,
                    async: true,
                    dataType: "json",
                    contentType: "application/json;charset=UTF-8",
                    success: function (res) {
                        count = res.count;
                        loading("?????????");    //????????????
                    }
                })

                function send(){
                    layui.use('laytpl', function () {
                        var laytpl = layui.laytpl,
                            laypage = layui.laypage

                        var list = null;
                        let username = sessionStorage.getItem("userid");
                        // ??????????????????
                        //??????
                        laypage.render({
                            elem: 'demo1'
                            ,count:count
                            ,limit:12
                            ,layout: ['count', 'prev', 'page', 'next', 'refresh', 'skip']
                            , jump: function (obj) {
                                let limit =  obj.limit;   //??????
                                let curr = obj.curr;    //??????
                                $.ajax({
                                    type: "get",
                                    url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/list?username="+username+"&curr="+curr+"&limit="+limit+"&text_status="+text_status,
                                    async: true,
                                    dataType: "json",
                                    contentType: "application/json;charset=UTF-8",
                                    success: function (res) {
                                        list = res.data;
                                        var data = {"list": list,}
                                        layer.closeAll();   //????????????
                                        layer.msg("????????????",{icon:6});
                                        var getTpl = app.innerHTML
                                            , view = document.getElementById('view');
                                        laytpl(getTpl).render(data, function (html) {
                                            view.innerHTML = html;
                                        });
                                    }
                                });
                            }
                        })
                    })
                }
                setTimeout(send,500)  //??????0.5?????????
            }
        });
    })
</script>

<%--??????????????????--%>
<script>
    
    $(document).on('click', '#sou', function() {
        layer.msg('??????????????????');
        //??????li??????value???
        // console.log($(this).attr("value"));
        let text_id = $(this).attr("value");
        let username = sessionStorage.getItem("userid");
        //????????????
        layui.use('layer', function(){ //????????????layer?????????????????????
            var $ = layui.jquery, layer = layui.layer; //????????????layer?????????????????????
            layer.open({
                content: '???????????????????????????'
                ,title:'????????????'
                ,icon:'5'
                ,btn: ['??????', '?????????']
                ,yes: function(index, layero){
                    //??????????????????????????????
                    $.ajax({
                        type: "get",
                        url: "${pageContext.request.contextPath}/sys/qiantai/geren/recommend/delete?text_id="+text_id+"&username="+username,
                        async: true,
                        dataType: "json",
                        contentType: "application/json;charset=UTF-8",
                        success: function (res) {
                            if (res === true){
                                layer.msg("????????????",{icon:1});
                                setTimeout(function () {
                                    window.location.reload();  //????????????
                                }, 1500);
                            }else {
                                layer.msg("????????????",{icon:2});
                            }
                        }
                    })
                }
                ,btn2: function(index, layero){
                    layer.msg("????????????",{icon:6});
                }
                ,cancel: function(){
                    //?????????????????????
                    //return false ?????????????????????????????????????????????
                }
            });
        })
    });
</script>
</html>