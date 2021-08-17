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
<div class="demoTable">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    搜索ID：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="text_id" placeholder="输入内容id" autocomplete="off">
    </div>
    &nbsp;&nbsp;
    名称：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="text_name" placeholder="输入内容名称" autocomplete="off">
    </div>
    &nbsp;&nbsp;
    标签：
    <div class="layui-inline" style="width: 200px;">
        <input name="" placeholder="选择内容类型" class="layui-input" id="text_label">
    </div>
    &nbsp;&nbsp;
    作者id：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="text_rec_id" placeholder="输入内容作者"  autocomplete="off">
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <button class="layui-btn" data-type="reload">搜索</button>
</div>
<table class="layui-hide" id="test"  lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="delete" style="color: white;background-color: red">删除</a>
    <a class="layui-btn layui-btn-xs" lay-event="more">更多 <i class="layui-icon layui-icon-down"></i></a>
</script>

<script id="a" type="text/html">
    <a href="{{d.text_link}}" target="_blank" style="color: #1E9FFF">{{d.text_link}}</a>
</script>
<script id="status" type="text/html">
    {{#  if(d.text_status === 0){ }}
    <div style="color: #1E9FFF">待审核</div>
    {{# } else if(d.text_status === 1){ }}
    <div style="color: red">已拒绝</div>
    {{#  } else { }}
    <div style="color: #00FF00">已通过</div>
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
                title: '算法与数据结构'
            },{
                title: '计算机系统'
            },{
                title: '计算机网络'
            },{
                title: '软件开发'
            }]
            ,click: function(obj){
                this.elem.val(obj.title);
            }
            ,style: 'width: 200px;'
        });
        
        
        
        
        table.render({
            elem: '#test'
            ,url:'/sys/houtai/generalList?text_id='+""+"&text_name="+""+"&text_label="+""+"&text_rec_id="+""
            ,toolbar: 'default'
            ,totalRow: true //开启合计行
            ,parseData:function (res) {
                // console.log(res);
            }
            ,cols: [[
                {type:'checkbox',fixed: 'left'}
                ,{field:'text_id', width:80, title: 'ID', sort: true, fixed: 'left', totalRowText: '合计：'}
                ,{field:'text_status', width:100, title: '状态',templet: '#status',sort: true,}
                ,{field:'text_name', width:120, title: '名称'}
                ,{field:'text_image', width:70, title: '图标',templet: '#img'}
                ,{field:'text_label', width:130, title: '标签'}
                ,{field:'text_rec_id', width:100, title: '推荐者id',sort: true,}
                ,{field:'text_collect', width:100, title: '收藏量'}
                ,{field:'text_share', width:90, title: '分享量',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} 条'}
                ,{field:'text_read', width:90, title: '访问量',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} 次'}
                ,{field:'text_date', width:120, title: '上传时间'}
                ,{field:'text_score', width:120, title: '评分总分数',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} 分'}
                ,{field:'text_total', width:120, title: '评分人数',sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} 人'}
                ,{field:'text_link', width:180, title:'链接',templet: '#a'}
                ,{field:'text_describe', width:200, title: '描述'}
                ,{field:'text_detailed', width:200, title: '详细'}
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
                let text_rec_id = $('#text_rec_id').val();
                console.log(text_label);
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,url: '/sys/houtai/generalList?text_id='+text_id+"&text_name="+text_name+"&text_label="+text_label+"&text_rec_id="+text_rec_id
                    // ,where:{
                    //     text_id:text_id,
                    //     text_name:text_name,
                    //     text_label:text_label,
                    //     text_rec_id:text_rec_id,
                    // }
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
        
        
        
        
        //监听行工具事件
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            console.log(obj);
            console.log(data);
            let text_status;
            if(layEvent === 'delete'){
                layer.confirm('真的删除行么', function(index){
                    $.ajax({
                        type: "get",
                        url: "${pageContext.request.contextPath}/sys/houtai/generalList/sta/delete?text_id="+data.text_id,
                        async: true,
                        dataType: "json",
                        contentType: "application/json;charset=UTF-8",
                        success: function (data) {
                            if(data === true){
                                layer.alert("删除成功", {icon: 6});
                                obj.del(); //删除对应行（tr）的DOM结构
                                layer.close(index);
                            }else {
                                layer.alert("删除失败", {icon: 5});
                            }
                        }
                    });
                    //向服务端发送删除指令
                });
            } else if(layEvent === 'more'){
                //下拉菜单
                dropdown.render({
                    elem: this //触发事件的 DOM 对象
                    ,show: true //外部事件触发即显示
                    ,data: [{
                        title: '批准'
                        ,id: 2
                    },{
                        title: '拒绝'
                        ,id: 1
                    },{
                        title: '重新审核'
                        ,id: 0
                    }]
                    ,click: function(menudata){
                        if(menudata.id === 2){
                            layer.msg("通过"+data.text_id);
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
                                    layer.msg("成功修改", {icon: 6});
                                    // deviceTable.reload()
                                    //更新状态
                                    obj.update({
                                        text_status:text_status,
                                    });
                                }else {
                                    layer.msg("修改失败", {icon: 5});
                                }
                            }
                        });
                    }
                    ,align: 'right' //右对齐弹出（v2.6.8 新增）
                    ,style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //设置额外样式
                })
            }
        });
        
    });
</script>

</body>
</html>