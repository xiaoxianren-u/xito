<%--
  Created by IntelliJ IDEA.
  User: yangzhan
  Date: 2021/8/17
  Time: 13:23
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
    <link rel="icon" href="${pageContext.request.contextPath}/static/imager/mo.jpg"  mce_href="/${pageContext.request.contextPath}/static/imager/mo.jpg" type="image/x-icon"/>

</head>
<body>
<br/>

<form ??nsubmit="return false">
<div class="demoTable">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    ??????ID???
    <div class="layui-inline">
        <input class="layui-input" name="id" id="text_id" placeholder="????????????id" autocomplete="off">
    </div>
    &nbsp;&nbsp;
    ?????????
    <div class="layui-inline">
        <input class="layui-input" name="id" id="text_name" placeholder="??????????????????" autocomplete="off">
    </div>
    &nbsp;&nbsp;
    ?????????
    <div class="layui-inline" style="width: 200px;">
        <input name="" placeholder="??????????????????" class="layui-input" id="text_label">
    </div>
    &nbsp;&nbsp;
    ??????id???
    <div class="layui-inline">
        <input class="layui-input" name="id" id="username" placeholder="??????????????????"  autocomplete="off">
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="layui-btn" data-type="reload">??????</button>
    <button type="reset" class="layui-btn layui-btn-warm">??????</button>
</div>
</form >
<script>
    var form = document.getElementsByTagName('form')[0];
    form.addEventListener('submit',function(e){
        var event = e || window.event;
        event.preventDefault();
    });
</script>

<table class="layui-hide" id="test"  lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="delete" style="color: white;background-color: red">??????</a>
    <a class="layui-btn layui-btn-xs" lay-event="more">?????? <i class="layui-icon layui-icon-down"></i></a>
</script>

<script id="a" type="text/html">
    <a href="{{d.text_link}}" target="_blank" style="color: #1E9FFF">{{d.text_link}}</a>
</script>
<script id="status" type="text/html">
    {{#  if(d.text_status === 0){ }}
    <div style="color: #1E9FFF">?????????</div>
    {{# } else if(d.text_status === 1){ }}
    <div style="color: red">?????????</div>
    {{#  } else { }}
    <div style="color: #00FF00">?????????</div>
    {{#  } }}
</script>

<script id="img"  type="text/html">
    <div><img style="height:45px;width:45px;" src="{{d.text_image}}" ></div>
</script>
<script>
    layui.use('table', function(){
        var table = layui.table,
            dropdown = layui.dropdown;

        dropdown.render({
            elem: '#text_label'
            ,data: [{
                title: ''
            },{
                title: 'java'
            },{
                title: 'python'
            },{
                title: 'c/c++'
            },{
                title: 'javaScript'
            },{
                title: 'PHP'
            },{
                title: '?????????????????????'
            },{
                title: '???????????????'
            },{
                title: '???????????????'
            },{
                title: '????????????'
            }]
            ,click: function(obj){
                this.elem.val(obj.title);
            }
            ,style: 'width: 200px;'
        });
        
        
        
        
        table.render({
            elem: '#test'
            ,url:'/sys/houtai/generalList?text_id='+""+"&text_name="+""+"&text_label="+""+"&username="+""
            ,toolbar: 'default'
            ,totalRow: true //???????????????
            ,parseData:function (res) {
                // console.log(res);
                if (res === false){
                    layer.msg("???????????????",{icon:0})
                }
            }
            ,cols: [[
                {type:'checkbox',fixed: 'left'}
                ,{field:'text_id', width:80, title: 'ID', sort: true, fixed: 'left', totalRowText: '?????????'}
                ,{field:'text_status', width:100, title: '??????',templet: '#status',sort: true,}
                ,{field:'text_name', width:120, title: '??????'}
                ,{field:'text_image', width:70, title: '??????',templet: '#img'}
                ,{field:'text_label', width:130, title: '??????'}
                ,{field:'text_rec_id', width:100, title: '?????????id',sort: true,}
                ,{field:'text_collect', width:100, title: '?????????'}
                ,{field:'text_share', width:90, title: '?????????',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} ???'}
                ,{field:'text_read', width:90, title: '?????????',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} ???'}
                ,{field:'text_date', width:120, title: '????????????'}
                ,{field:'text_score', width:120, title: '???????????????',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} ???'}
                ,{field:'text_total', width:120, title: '????????????',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} ???'}
                ,{field:'text_link', width:180, title:'??????',templet: '#a'}
                ,{field:'text_describe', width:200, title: '??????'}
                ,{field:'text_detailed', width:200, title: '??????'}
                ,{fixed: 'right', width: 140, align:'center', toolbar: '#barDemo'}
            ]]
            ,page: {
                layout: ['prev', 'page', 'next',  'refresh', 'skip','count' ,'limit']
            }
            ,limit:20
            ,limits:[20,30,50,100]
            ,loading:true
            ,id: 'testReload'
        });

        var $ = layui.$, active = {
            reload: function(){
                let text_id = $('#text_id').val();
                let text_name = $('#text_name').val();
                let text_label = $('#text_label').val();
                let username = $('#username').val();
                console.log(text_label);
                //????????????
                table.reload('testReload', {
                    page: {
                        curr: 1 //???????????? 1 ?????????
                    }
                    ,url: '/sys/houtai/generalList?text_id='+text_id+"&text_name="+text_name+"&text_label="+text_label+"&username="+username
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
        
        
        
        
        //?????????????????????
        table.on('tool(test)', function(obj){ //??????tool ????????????????????????test ??? table ????????????????????? lay-filter="????????????"
            var data = obj.data //?????????????????????
                ,layEvent = obj.event; //?????? lay-event ????????????
            console.log(obj);
            console.log(data);
            let text_status;
            if(layEvent === 'delete'){
                layer.confirm('??????????????????', function(index){
                    $.ajax({
                        type: "get",
                        url: "${pageContext.request.contextPath}/sys/houtai/generalList/sta/delete?text_id="+data.text_id,
                        async: true,
                        dataType: "json",
                        contentType: "application/json;charset=UTF-8",
                        success: function (data) {
                            if(data === true){
                                layer.alert("????????????", {icon: 6});
                                obj.del(); //??????????????????tr??????DOM??????
                                layer.close(index);
                            }else {
                                layer.alert("????????????", {icon: 5});
                            }
                        }
                    });
                    //??????????????????????????????
                });
            } else if(layEvent === 'more'){
                //????????????
                dropdown.render({
                    elem: this //??????????????? DOM ??????
                    ,show: true //???????????????????????????
                    ,data: [{
                        title: '??????'
                        ,id: 2
                    },{
                        title: '??????'
                        ,id: 1
                    },{
                        title: '????????????'
                        ,id: 0
                    }]
                    ,click: function(menudata){
                        if(menudata.id === 2){
                            layer.msg("??????"+data.text_id);
                             text_status = menudata.id;
                        } else if(menudata.id === 1){
                            text_status = menudata.id;
                        } else if(menudata.id === 0){
                            text_status = menudata.id;
                        }
                        $.ajax({
                            type: "get",
                            url: "${pageContext.request.contextPath}/sys/houtai/generalList/sta?text_id="+data.text_id+"&text_status="+text_status,
                            async: true,
                            dataType: "json",
                            contentType: "application/json;charset=UTF-8",
                            success: function (data) {
                                if(data === true){
                                    layer.msg("????????????", {icon: 6});
                                    // deviceTable.reload()
                                    //????????????
                                    obj.update({
                                        text_status:text_status,
                                    });
                                }else {
                                    layer.msg("????????????", {icon: 5});
                                }
                            }
                        });
                    }
                    ,align: 'right' //??????????????????v2.6.8 ?????????
                    ,style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //??????????????????
                })
            }
        });
        
    });
</script>

</body>
</html>