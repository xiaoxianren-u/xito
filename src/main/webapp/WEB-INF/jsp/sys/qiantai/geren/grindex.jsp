<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/27
  Time: 15:14
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
    <script src="${pageContext.request.contextPath}/static/js/el.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg" mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon" />

</head>
<body>
<div class="layui-bg-gray">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-panel">
                <div >
                    <div class="layui-row">
                        <div class="layui-col-xs2">
                            <div class="grid-demo grid-demo-bg1">
                                <div style="width: 100%;height: 150px;order-radius: 50%;-moz-border-radius: 50%; -webkit-border-radius: 50%;text-align: center"><br>
                                    <img id="image" src="${pageContext.request.contextPath}/static/imager/download.jpg" style="width: 80%;height: 80%;order-radius: 50%;-moz-border-radius: 50%; -webkit-border-radius: 50%;text-align: center">
                                </div>
                            </div>
                        </div>
                        <div class="layui-col-xs1">
                            <div class="grid-demo" style="color: white">.</div>
                        </div>
                        <div class="layui-col-xs9">
                            <div class="grid-demo">
                                <br><br>
                                <div>
                                    <h1 id="username">yz</h1>
                                    <br>
                                    <span class="layui-badge layui-bg-green"><span id="ji">10</span> ???</span>
                                </div>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br/>
<div class="layui-bg-gray">
    <div class="layui-row ">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" >
                    <div class="layui-row">
                        <div class="layui-col-xs2">
                            <div class="grid-demo grid-demo-bg1" style="font-size: 18px">????????????</div>
                        </div>
                        <div class="layui-col-xs9">
                            <div class="grid-demo" style="color: white">6/12</div>
                        </div>
                        <div class="layui-col-xs1">
                            <div class="grid-demo" ><a style="color: #1E9FFF" id="a_bnt">??????</a></div>
                        </div>
                    </div>
                
                </div>
                <div class="layui-card-body">
                    <div class="layui-row">
                        <div class="layui-col-xs2">
                            <div class="grid-demo grid-demo-bg1">
                                <ul>
                                    <li style="margin-top:10px">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</li>
                                    <li style="margin-top:10px">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</li>
                                    <li style="margin-top:10px">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</li>
                                    <li style="margin-top:10px">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</li>
                                    <li style="margin-top:10px">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</li>
                                    <li style="margin-top:10px">????????????</li>
                                    <li style="margin-top:10px">????????????</li>
                                    <li style="margin-top:10px">????????????</li>
                                    <li style="margin-top:10px">????????????</li>
                                    <li style="margin-top:10px">????????????</li>
                                </ul>
                            </div>
                        </div>
                        <div class="layui-col-xs10">
                            <div class="grid-demo">
                                <ul>
                                    <li style="margin-top:10px" id="li1"></li>
                                    <li style="margin-top:10px" id="li2"></li>
                                    <li style="margin-top:10px" id="li3"></li>
                                    <li style="margin-top:10px" id="li4"></li>
                                    <li style="margin-top:10px" id="li5"></li>
                                    <li style="margin-top:10px" id="li6" style="word-break:break-all"></li>
                                    <li style="margin-top:10px" id="li7" style="word-break:break-all"></li>
                                    <li style="margin-top:10px" id="li8"></li>
                                    <li style="margin-top:10px" id="li9"></li>
                                    <li style="margin-top:10px" id="li10"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--??????????????????--%>
<div class="site-text" style="margin: 5%; display: none" id="window"  target="test123">
    <form class="layui-form" id="book" method="post" lay-filter="example">
        <div class="layui-form-item">
            <label class="layui-form-label">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <input type="text" id="email" name="email" lay-verify="title" autocomplete="off" placeholder="???????????????" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block">
                <input type="text" id="phone" name="phone" lay-verify="title" autocomplete="off" placeholder="???????????????" class="layui-input">
            </div>
        </div>
        
        <div class="layui-form-item">
            <label class="layui-form-label">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</label>
            <div class="layui-input-block" id="sex">
                <input type="radio"  name="sex" value="???" title="???" checked="">
                <input type="radio"  name="sex" value="???" title="???">
            </div>
        </div>
        
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">????????????</label>
            <div class="layui-input-block">
                <textarea name="desc" id="interest" placeholder="???????????????"  maxlength="50" oninput="wordLeg(this);"  onpropertychange="if(value.length>50) value=value.substr(0,50)"  class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">????????????</label>
            <div class="layui-input-block">
                <textarea name="desc" id="summary"  placeholder="???????????????" maxlength="50" oninput="wordLeg(this);"  onpropertychange="if(value.length>50) value=value.substr(0,50)" class="layui-textarea"></textarea>
            </div>
        </div>
<%--        ????????????--%>
        <script>

            function wordLeg  (obj) {

                var currleg = $(obj).val().length;

                var length = $(obj).attr('maxlength');

                if (currleg > length) {

                    layer.msg('????????????' + length + '?????????');

                } else {

                    $('.text_count').text(currleg);

                }
            }
            
        </script>
        <div class="layui-form-item">
            <label class="layui-form-label">????????????</label>
            <div class="layui-input-block">
                <input type="text" id="area" name="area" lay-verify="title" autocomplete="off" placeholder="??????????????????" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">????????????</label>
            <div class="layui-input-block">
                <input type="text" id="school" name="school" lay-verify="title" autocomplete="off" placeholder="??????????????????" class="layui-input">
            </div>
        </div>
    </form>
</div>

<script>

    $("#a_bnt").click(function () {
        if (sessionStorage.getItem("userid") === null || sessionStorage.getItem("userid") === undefined){
            layer.alert("????????????????????????????????????????????????",{icon: 5});
        }else {
            console.log("sdfsdf")
            layer.open({
                type: 1,
                title:"????????????",
                area:["470px","680px"],
                btn: ['??????', '??????'], //?????????????????????
                Number:100000,   //?????????????????????
                anim:2,
                maxmin:true, // ??????????????????
                resize:true, // ??????????????????
                content: $("#window"), //????????????????????????
                yes:function (index,layero){
                    console.log("AAAAAAAAA");
                    let email1 = $("#email").val();
                    let phone1 = $("#phone").val();
                    let sex1   = $('input:radio:checked').val();
                    let interest1 = $("#interest").val();
                    let summary1 = $("#summary").val();
                    let area1 = $("#area").val();
                    let school1 = $("#school").val();
                    let username1 = sessionStorage.getItem("userid");
                    console.log(email+" "+phone1);
                    console.log(JSON.stringify(
                        {
                            username:username1,
                            email:email1,
                            phone:phone1,
                            sex:sex1,
                            interest:interest1,
                            summary:summary1,
                            area:area1,
                            school:school1,
                        }
                    ))
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/sys/qiantai/geren/gerindex/updata",
                        async: true,
                        dataType: "json",
                        data: JSON.stringify({username:username1,email:email1,phone:phone1,sex:sex1,interest:interest1,summary:summary1,area:area1,school:school1,}),
                        contentType: "application/json;charset=UTF-8",
                        success: function (data) {
                            // console.log(data +"++++++++++++++++");
                            if(data.msg === true){
                                layer.msg("????????????",{icon : 6, offset : "auto",time:2000});

                                setTimeout(function () {
                                    window.location.reload();
                                },2500);
                            }
                            if (data.msg === false){
                                layer.alert("????????????",5);
                            }

                        }
                    })
                },
            });
        }
        
        
    })
</script>

<script>
    const username = sessionStorage.getItem("userid");
    console.log(username+"sdfdfdfd");
    $.ajax({
        type: "post",
        url: "${pageContext.request.contextPath}/sys/qiantai/geren/gerindex/userusel",
        async: true,
        dataType: "json",
        data: JSON.stringify({username:username}),
        contentType: "application/json;charset=UTF-8",
        success: function (data) {
            // console.log(data)
            
            var list = data.user;
            console.log(list);
            $("#image").attr("src",list.image);
            $("#li1").html(list.integral);
            $("#li2").html(list.codecurrency);
            $("#li3").html(list.email);
            $("#li4").html(list.phone);
            $("#li5").html(list.sex);
            $("#li6").html(list.interest);
            $("#li7").html(list.summary);
            $("#li8").html(list.area);
            $("#li9").html(list.school);
            $("#li10").html(list.time);
            $("#username").html(list.username);
            // let ji = (list.integral /100) + 1;
            let ji = parseInt(list.integral /100) + 1;  //??????
            $("#ji").html(ji);

            console.log(list.interest.length);
            console.log(list.summary.length);


        }
    })
    
</script>
</body>
</html>