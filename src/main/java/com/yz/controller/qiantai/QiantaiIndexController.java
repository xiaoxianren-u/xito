package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 22:51 星期一
 * @Software: IntelliJ IDEA
 * @File : QiantaiIndexController.JAVA
 */

@Controller
@RequestMapping("/sys/qiantai")
public class QiantaiIndexController {

    private String paxt = "/sys/qiantai";

    /**
     * 后端首页页面
     * @return
     */
    @RequestMapping(value = "/qiantai")
    public String qiantaiIndex(){
        return paxt+"/qiantaiindex";
    }

    /**
     * java页面
     * @return
     */
    @RequestMapping(value = "/java")
    public String javaIndex(){
        return paxt+"/java";
    }


    @RequestMapping("/select")
    @ResponseBody
    public String qintselect(){
        return JSON.toJSONString("ok");
    }






}
