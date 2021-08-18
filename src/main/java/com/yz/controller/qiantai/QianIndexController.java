package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 18:33 星期一
 * @Software: IntelliJ IDEA
 * @File : QianIndexController.JAVA
 */

@Controller
public class QianIndexController {

    /**
     * 前端首页
     * @param model
     * @return
     */
    @RequestMapping("/")
    public String qianindex(Model model){

        return "index";
    }

    /**
     * 错误404
     * @return
     */
    @RequestMapping(value = "/eroer")
    public String er(){
        return "eroore";
    }


}
