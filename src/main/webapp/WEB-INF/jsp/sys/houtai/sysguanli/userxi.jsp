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
    <script src="${pageContext.request.contextPath}/static/js/el.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/vue.js"></script>
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
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<%--    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>--%>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>

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
<div class="layui-row layui-col-space1">
    <div class="layui-col-md1">
        <div class="grid-demo" style="color: white">.</div>
    </div>
    <div class="layui-col-md2">
        <div class="layui-inline">
            
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo grid-demo-bg1">
    
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <div class="layui-input-inline">
                <input type="tel" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-col-md1">
        <div class="grid-demo" style="text-align: center">
            <button type="button" class="layui-btn  layui-btn-radius">搜索</button>
        </div>
    </div>
    <div class="layui-col-md2">
        <div class="grid-demo">
            <button type="button" class="layui-btn layui-btn-radius layui-btn-warm ">重置</button>
        </div>
    </div>
</div>

<%--表单--%>
    <table class="layui-hide" id="demo" lay-filter="test" style="width: 99%"></table>
    

<%--    右边功能栏--%>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-xs" lay-event="more">更多 <i class="layui-icon layui-icon-down"></i></a>
    </script>
</body>

<script type="text/html" id="switchTpl">
    <!-- 这里的 checked 的状态只是演示 -->
    <input type="checkbox" name="sex" mid="{{d.id}}"  lay-skin="switch" lay-text="" lay-filter="sexDemo" {{ d.stati == 1 ? 'checked' : '' }}>
</script>
<script type="text/html" id="switchTps">
    <!-- 这里的 checked 的状态只是演示 -->
    <input type="checkbox" name="sex" mid1="{{d.username}}"  lay-skin="switch" lay-text="" lay-filter="sexDemo1" {{ d.stats == 1 ? 'checked' : '' }}>
</script>

<script id="img">
    <div><img style="height:35px;width:35px;" src="{{ d.image}}" ></div>
</script>
<script>
    
    
    
    
    layui.use(function(){ //亦可加载特定模块：layui.use(['layer', 'laydate', function(){
                          //得到各种内置组件
        var layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element //元素操作
            ,dropdown = layui.dropdown //下拉菜单
            ,form = layui.form;
        //向世界问个好
        layer.msg('Hello World');

        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.tips('切换了 '+ data.index +'：'+ this.innerHTML, this, {
                tips: 1
            });
        });

        //执行一个 table 实例数据表
        table.render({
            elem: '#demo'
            ,width:'98%'
            ,height: 780
            ,url: '${pageContext.request.contextPath}/sys/houtai/table/user' //数据接口
            ,title: '用户表'
            ,page: true //开启分页
            ,limit:15
            ,limits:[15,20,30,50,100]
            ,toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            ,totalRow: true //开启合计行
            ,parseData:function (res) {
                console.log(res);
            }
            ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'id', title: 'ID', width:60, sort: true, fixed: 'left', totalRowText: '合计：'}
                ,{field: 'username', title: '用户名', width:180}
                ,{field: 'stati', title: '普通用户权限', width:120, align: 'center' ,templet: '#switchTpl'}
                ,{field: 'stats', title: '管理员权限', width:120,templet: '#switchTps', unresize: true}
                ,{field: 'email', title: '用户邮箱', width:160}
                ,{field: 'image', title: '头像', width:65,templet: '#img'}
                ,{field: 'integral', title: '积分', width: 90, sort: true, totalRow: true}
                ,{field: 'codecurrency', title: '码币', width: 80, sort: true, totalRow: '{{ parseInt(d.TOTAL_NUMS) }} 分'}
                ,{field: 'phone', title: '电话', width:110}
                ,{field: 'sex', title: '性别', width:80, sort: true}
                ,{field: 'name', title: '名称', width: 100}
                ,{field: 'interest', title: '个人兴趣', width:200}
                ,{field: 'summary', title: '个人简介', width: 200}
                ,{field: 'area', title: '所在地区', width: 150}
                ,{field: 'school', title: '所在学校', width: 150}
                ,{field: 'time', title: '注册时间', width: 200}
                ,{fixed: 'right', width: 150, align:'center', toolbar: '#barDemo'}
            ]]
        });

        //普通用户
        form.on('switch(sexDemo)', function(obj){
            var id = $(this).attr('mid');
            console.info('id:'+id);
            console.log(obj.elem.checked);
            var stati = obj.elem.checked?"1":"0";
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
                        layer.alert("成功修改", {icon: 6});
                    }else {
                        layer.alert("修改失败", {icon: 5});
                    }
                }
            });
            
        });
        //管理员
        form.on('switch(sexDemo1)', function(obj){
            // var id = $(this).attr('mid1');
            // console.info('id:'+id);
            var username = $(this).attr('mid1');
            console.log(username)
            console.log(obj.elem.checked);
            var stats = obj.elem.checked?"1":"0";
            
            console.info('isManager:' + stats);
            
            //二次验证
            layer.prompt({
                formType: 1
                ,title: '敏感操作，请验证口令'
            }, function(value, index){
                layer.close(index);
                layer.confirm('确定修改管理权限吗？', function(index) {
                    //执行 Ajax 后重载
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
                                            layer.alert("成功修改", {icon: 6});
                                        }else {
                                            layer.alert("修改失败", {icon: 5});
                                        }

                                    }
                                });
                            }else {
                                layer.msg('口令错误');
                                setTimeout(function () {
                                    window.location.reload();  //刷新页面
                                }, 800);
                            }
                        }
                    })
                    // table.reload('LAY-user-back-manage');
                    
                });
            });
            
        });

        
        //监听头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id)
                ,data = checkStatus.data; //获取选中的数据
            switch(obj.event){
                case 'add':
                    layer.msg('添加');
                    break;
                case 'update':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else if(data.length > 1){
                        layer.msg('只能同时编辑一个');
                    } else {
                        layer.alert('编辑 [id]：'+ checkStatus.data[0].id);
                    }
                    break;
                case 'delete':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else {
                        layer.msg('删除');
                    }
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'detail'){
                layer.msg('查看操作');
            } else if(layEvent === 'more'){
                //下拉菜单
                dropdown.render({
                    elem: this //触发事件的 DOM 对象
                    ,show: true //外部事件触发即显示
                    ,data: [{
                        title: '编辑'
                        ,id: 'edit'
                    },{
                        title: '删除'
                        ,id: 'del'
                    }]
                    ,click: function(menudata){
                        if(menudata.id === 'del'){
                            layer.confirm('真的删除行么', function(index){
                                obj.del(); //删除对应行（tr）的DOM结构
                                layer.close(index);
                                //向服务端发送删除指令
                            });
                        } else if(menudata.id === 'edit'){
                            layer.msg('编辑操作，当前行 ID:'+ data.id);
                        }
                    }
                    ,align: 'right' //右对齐弹出（v2.6.8 新增）
                    ,style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //设置额外样式
                })
            }
        });
        
        })
</script>
</html>