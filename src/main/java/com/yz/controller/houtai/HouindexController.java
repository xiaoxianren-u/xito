package com.yz.controller.houtai;

import com.alibaba.fastjson.JSON;
import com.yz.pojo.User;
import com.yz.service.SysUserxiMapperService;
import com.yz.util.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 17:54 星期一
 * @Software: IntelliJ IDEA
 * @File : HouindexController.JAVA
 */
@Controller
@RequestMapping(value = "/sys/houtai")
public class HouindexController {

    private String paxt = "/sys/houtai/sysguanli";
    @Autowired
    private SysUserxiMapperService sysUserxiMapperService;

    /**
     * 视图首页的请求
     * indexJsp()
     * @return sys/houtai/index
     */
    @RequestMapping("/index.action")
    public String indexJsp(){

        int id = Session.nameId;

        System.out.println("id = " + id);
        //防止普通用户登录后，后台可以打开
        if (id == 0){
            return "/sys/eroore";
        }
        System.out.println("====================================================");
        return "sys/houtai/index";
    }

    @RequestMapping(value = "/userxi")
    public String userxi(){
        return paxt+"/userxi";
    }


    /**
     * 用户管理列表并实现分页
     * @param page
     * @param limit
     * @return
     */
    @RequestMapping(value = "/table/user")
    @ResponseBody
    public String selectAll(@RequestParam(value = "page") Integer page, @RequestParam(value = "limit") Integer limit){

        int n = sysUserxiMapperService.selectCount();
        page = page > 1 ? limit*(page-1):0;
        List<User> list=sysUserxiMapperService.selectAll(page,limit);
        for (User s : list){
            /**
             * 对号码进行处理，显示****
             */
            if(s.getPhone().length() == 11) {
                s.setPhone(s.getPhone().substring(0, 3) + "****" + s.getPhone().substring(7));
                System.out.println("s.getPhone().substring(0,3)+\"****\"+s.getPhone().substring(7) = " + s.getPhone().substring(0, 3) + "****" + s.getPhone().substring(7));
            }
            /**
             * 对邮箱进行处理，显示****
             */
            if(s.getEmail().length() != 0 && s.getEmail() != null){
                s.setEmail(s.getEmail().replaceAll("(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)","$1****$3$4"));
            }
        }
        String str = "{\"code\":0,\"msg\":\"\",\"count\":" + n + ",\"data\":" + JSON.toJSONString(list) + "}";
        return str;
    }

    /**
     * 权限管理，修改普通用户，或管理员
     * @param user
     * @return
     */
    @RequestMapping(value = "/userxi/sta")
    @ResponseBody
    public String staUser(@RequestBody User user){
        int n = sysUserxiMapperService.updateStat(user);
        return JSON.toJSONString(n > 0);
    }

}
