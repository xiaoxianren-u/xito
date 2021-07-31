
    sessionStorage.setItem("ia","aaaa");
    console.log(sessionStorage.getItem("ia") +"11111111111111111");
    console.log(sessionStorage.getItem("userid")+"2222222");

    var lastTime = new Date().getTime();
    var currentTime = new Date().getTime();
    // var timeOut = 15 * 60 * 1000; //设置超时时间： 15分
    var timeOut = 20 * 60 * 1000; //设置超时时间： 15分

    $(function(){
    /* 鼠标移动事件 */
    $(document).mouseover(function(){
        lastTime = new Date().getTime(); //更新操作时间

    });
});

    function toLoginPage(){
    currentTime = new Date().getTime(); //更新当前时间
    if(currentTime - lastTime > timeOut){ //判断是否超时
    sessionStorage.clear();
    console.log("AAAAAAAAAAAAAAAAAAAA");
    console.log(sessionStorage.getItem("ia")+"   11111111111111111111111111111111");
        console.log(sessionStorage.getItem("userid")+"   222222222222222222222");

    }
}

    /* 定时器
    * 间隔1秒检测是否长时间未操作页面
    */
    window.setInterval(toLoginPage, 1000);


