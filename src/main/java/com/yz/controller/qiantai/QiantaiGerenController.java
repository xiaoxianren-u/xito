package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yz.pojo.User;
import com.yz.service.SysUserxiMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/27 14:20 星期二
 * @Software: IntelliJ IDEA
 * @File : QiantaiGerenController.JAVA
 */


@Controller
@RequestMapping(value = "/sys/qiantai/geren")
public class QiantaiGerenController {

    @Autowired
    private SysUserxiMapperService sysUserxiMapperService;


    private String paxt = "/sys/qiantai/geren";
    /**
     * 进入个人中心
     * @return geren.jsp页面
     */
    @RequestMapping("/")
    public String getGeren(){
        return paxt+"/geren";
    }
    /**
     * 个人中心首页
     * @return map
     */
    @RequestMapping(value = "/gerindex")
    public String getgerindex(){
        return paxt+"/grindex";
    }

    /**
     * /sys/qiantai/geren/gerindex/updata
     * /sys/qiantai/geren/gerindex/updata
     * 信息修改
     * @param
     * @return
     */

    @RequestMapping(value = "/gerindex/updata",method = RequestMethod.POST)
    @ResponseBody
    public String updateUser(@RequestBody User user){
        HashMap<String, Boolean> map = new HashMap<>();
        int n = sysUserxiMapperService.updateUser(user);
        map.put("msg", n > 0);
        return JSON.toJSONString(map);
    }

    /**
     * 获取用户个人中心个人信息
     * @param user
     * @return
     */

    @RequestMapping(value = "/gerindex/userusel",method = RequestMethod.POST)
    @ResponseBody
    public String selectUser(@RequestBody User user){
//        System.out.println("user = " + user);
        HashMap<String, User> map = new HashMap<>();
        User user1 = sysUserxiMapperService.selectUser(user);
//        System.out.println("user1 = " + user1);
        map.put("user",user1);
        return JSON.toJSONString(map);
    }


    @RequestMapping(value = "/getuijian")
    public String tuij(){

        return paxt+"/tuijian";
    }











}
