<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/7/25
  Time: 18:43
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/v.css">
</head>
<body>
<%--<hr/>--%>
<br>

<%--<div id="add">--%>
<%--    <el-switch--%>
<%--            v-model="value"--%>
<%--            active-color="#13ce66"--%>
<%--            inactive-color="#ff4949">--%>
<%--    </el-switch>--%>
<%--</div>--%>
<div class="layui-row layui-col-space1" style="width: 99%">
    <div class="layui-col-md1">
        <div class="grid-demo" style="">.</div>
    </div>
    <div class="layui-col-md2">
        <div class="layui-inline">
            
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="??????????????????" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="??????????????????" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo grid-demo-bg1">
    
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="??????????????????" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="??????????????????" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md1">
        <div class="grid-demo" style="text-align: center">
            <button type="button" class="layui-btn  layui-btn-radius">??????</button>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <button type="button" class="layui-btn layui-btn-radius layui-btn-warm ">??????</button>
        </div>
    </div>
</div>

<%--??????--%>
    <table class="layui-hide" id="demo" lay-filter="test" style="width: 97%"></table>
    

<%--    ???????????????--%>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">??????</a>
        <a class="layui-btn layui-btn-xs" lay-event="more">?????? <i class="layui-icon layui-icon-down"></i></a>
    </script>
</body>

<script type="text/html" id="switchTpl">
    <!-- ????????? checked ????????????????????? -->
    <input type="checkbox" name="sex" mid="{{d.id}}"  lay-skin="switch" lay-text="" lay-filter="sexDemo" {{ d.stati == 1 ? 'checked' : '' }}>
</script>
<script type="text/html" id="switchTps">
    <!-- ????????? checked ????????????????????? -->
    <input type="checkbox" name="sex" mid1="{{d.username}}"  lay-skin="switch" lay-text="" lay-filter="sexDemo1" {{ d.stats == 1 ? 'checked' : '' }}>
</script>

<script id="img"  type="text/html">
    <div><img style="height:35px;width:35px;" src="{{ d.image}}" ></div>
</script>
<script>
    
    
    
    
    layui.use(function(){ //???????????????????????????layui.use(['layer', 'laydate', function(){
                          //????????????????????????
        var layer = layui.layer //??????
            ,table = layui.table //??????
            ,element = layui.element //????????????
            ,dropdown = layui.dropdown //????????????
            ,form = layui.form;
        //??????????????????
        layer.msg('Hello World');

        //??????Tab??????
        element.on('tab(demo)', function(data){
            layer.tips('????????? '+ data.index +'???'+ this.innerHTML, this, {
                tips: 1
            });
        });

        //???????????? table ???????????????
        table.render({
            elem: '#demo'
            // ,width:''
            ,height: 770
            ,url: '${pageContext.request.contextPath}/sys/houtai/table/user' //????????????
            ,title: '?????????'
            ,page: true //????????????
            ,limit:15
            ,limits:[15,20,30,50,100]
            ,toolbar: 'default' //?????????????????????????????????????????????????????????????????????????????????
            // ,totalRow: true //???????????????
            ,parseData:function (res) {
                console.log(res);
            }
            ,cols: [[ //??????
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'id', title: 'ID', width:60, sort: true, fixed: 'left', totalRowText: '?????????'}
                ,{field: 'username', title: '?????????', width:180}
                ,{field: 'stati', title: '??????????????????', width:120, align: 'center' ,templet: '#switchTpl'}
                ,{field: 'stats', title: '???????????????', width:120,templet: '#switchTps', unresize: true}
                ,{field: 'email', title: '????????????', width:160}
                ,{field: 'image', title: '??????', width:65,templet: '#img'}
                ,{field: 'integral', title: '??????', width: 90, sort: true, totalRow: true}
                ,{field: 'codecurrency', title: '??????', width: 80, sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} ???'}
                ,{field: 'phone', title: '??????', width:110}
                ,{field: 'sex', title: '??????', width:80, sort: true}
                ,{field: 'name', title: '??????', width: 100}
                ,{field: 'interest', title: '????????????', width:200}
                ,{field: 'summary', title: '????????????', width: 200}
                ,{field: 'area', title: '????????????', width: 150}
                ,{field: 'school', title: '????????????', width: 150}
                ,{field: 'time', title: '????????????', width: 200}
                ,{fixed: 'right', width: 150, align:'center', toolbar: '#barDemo'}
            ]]
        });

        //????????????
        form.on('switch(sexDemo)', function(obj){
            var id = $(this).attr('mid');
            console.info('id:'+id);
            console.log(obj.elem.checked);
            let stati = obj.elem.checked?"1":"0";
            console.info('isManager:' + stati);
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/sys/houtai//userxi/sta",
                async: true,
                dataType: "json",
                data: JSON.stringify({id:id,stati:stati}),
                contentType: "application/json;charset=UTF-8",
                success: function (data) {
                    if(data === true){
                        layer.alert("????????????", {icon: 6});
                    }else {
                        layer.alert("????????????", {icon: 5});
                    }
                }
            });
            
        });
        //?????????
        form.on('switch(sexDemo1)', function(obj){
            // var id = $(this).attr('mid1');
            // console.info('id:'+id);
            var username = $(this).attr('mid1');
            console.log(username)
            console.log(obj.elem.checked);
            var stats = obj.elem.checked?"1":"0";
            
            console.info('isManager:' + stats);
            
            //????????????
            layer.prompt({
                formType: 1
                ,title: '??????????????????????????????'
            }, function(value, index){
                layer.confirm('??????????????????????????????', function(index) {
                    //?????? Ajax ?????????
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/login/yan",
                        async: true,
                        dataType: "json",
                        data:JSON.stringify({username:'admin123',password:value}),
                        contentType: "application/json;charset=UTF-8",
                        success: function (res) {
                            console.log(res);
                            if (res === true){
                                $.ajax({
                                    type: "post",
                                    url: "${pageContext.request.contextPath}/sys/houtai/userxi/sta",
                                    async: true,
                                    dataType: "json",
                                    data: JSON.stringify({username:username,stats:stats}),
                                    contentType: "application/json;charset=UTF-8",
                                    success: function (data) {
                                        if(data === true){
                                            layer.msg("????????????", {icon: 6});
                                            setTimeout(function () {
                                                window.location.reload();  //????????????
                                            }, 800);
                                        }else {
                                            layer.msg("????????????", {icon: 5});
                                            setTimeout(function () {
                                                window.location.reload();  //????????????
                                            }, 800);
                                        }
                                    }
                                });
                            }else {
                                layer.msg('????????????');
                                // setTimeout(function () {
                                //     window.location.reload();  //????????????
                                // }, 800);

                                
                                
                            }
                        }
                    })
                });

            });
            
            
        });

        
        //????????????????????????
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id)
                ,data = checkStatus.data; //?????????????????????
            switch(obj.event){
                case 'add':
                    layer.msg('??????');
                    break;
                case 'update':
                    if(data.length === 0){
                        layer.msg('???????????????');
                    } else if(data.length > 1){
                        layer.msg('????????????????????????');
                    } else {
                        layer.alert('?????? [id]???'+ checkStatus.data[0].id);
                    }
                    break;
                case 'delete':
                    if(data.length === 0){
                        layer.msg('???????????????');
                    } else {
                        layer.msg('??????');
                    }
                    break;
            };
        });

        //?????????????????????
        table.on('tool(test)', function(obj){ //??????tool ????????????????????????test ??? table ????????????????????? lay-filter="????????????"
            var data = obj.data //?????????????????????
                ,layEvent = obj.event; //?????? lay-event ????????????
            if(layEvent === 'detail'){
                layer.msg('????????????');
            } else if(layEvent === 'more'){
                //????????????
                dropdown.render({
                    elem: this //??????????????? DOM ??????
                    ,show: true //???????????????????????????
                    ,data: [{
                        title: '??????'
                        ,id: 'edit'
                    },{
                        title: '??????'
                        ,id: 'del'
                    }]
                    ,click: function(menudata){
                        if(menudata.id === 'del'){
                            layer.confirm('??????????????????', function(index){
                                obj.del(); //??????????????????tr??????DOM??????
                                layer.close(index);
                                //??????????????????????????????
                            });
                        } else if(menudata.id === 'edit'){
                            layer.msg('???????????????????????? ID:'+ data.id);
                        }
                    }
                    ,align: 'right' //??????????????????v2.6.8 ?????????
                    ,style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //??????????????????
                })
            }
        });
        
        })
</script>
</html>