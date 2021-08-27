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
    /**
     * python页面
     * @return
     */
    @RequestMapping(value = "/python")
    public String PythonIndex(){
        return paxt+"/python";
    }
    /**
     * c/c++页面
     * @return
     */
    @RequestMapping(value = "/c")
    public String CIndex(){
        return paxt+"/c";
    }
    /**
     * javaScript页面
     * @return
     */
    @RequestMapping(value = "/javas")
    public String javasIndex(){
        return paxt+"/javas";
    }
    /**
     * php页面
     * @return
     */
    @RequestMapping(value = "/php")
    public String phpIndex(){
        return paxt+"/php";
    }
    /**
     * 计算机网络页面
     * @return
     */
    @RequestMapping(value = "/jiwangluo")
    public String jiwangluoIndex(){
        return paxt+"/jiwangluo";
    }
    /**
     * 计算机系统页面
     * @return
     */
    @RequestMapping(value = "/jixiton")
    public String jixitonIndex(){
        return paxt+"/jixiton";
    }
    /**
     * 软件页面
     * @return
     */
    @RequestMapping(value = "/ruanji")
    public String ruanjiIndex(){
        return paxt+"/ruanji";
    }
    /**
     * 算法页面
     * @return
     */
    @RequestMapping(value = "/suanfa")
    public String suanfaIndex(){
        return paxt+"/suanfa";
    }
    /**
     * 算法页面
     * @return
     */
    @RequestMapping(value = "/explain")
    public String ExplainIndex(){
        return paxt+"/explain";
    }






    @RequestMapping("/select")
    @ResponseBody
    public String qintselect(){
        return JSON.toJSONString("ok");
    }






}
