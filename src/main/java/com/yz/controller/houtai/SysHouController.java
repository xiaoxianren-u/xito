package com.yz.controller.houtai;

import com.alibaba.fastjson.JSON;
import com.yz.pojo.User;
import com.yz.service.UserMapperService;
import com.yz.util.Md_5;
import com.yz.util.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 17:34 星期一
 * @Software: IntelliJ IDEA
 * @File : SysHouController.JAVA
 */

@Controller
@RequestMapping("/login")
public class SysHouController {


    @Autowired
    private UserMapperService userMapperService;

    /**
     * 前端登录页面
     * @return
     */

    @RequestMapping("/")
    public String qianloginAction(){
        return "qianlogin";
    }

    /**
     * 后端登录页面
     * @return
     */

    @RequestMapping("/yz")
    public String loginAction(){
        return "login";
    }

    /**
     * 登录请求
     * @param user
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public String index(@RequestBody User user, HttpSession session)   {

        String passwordJiami = Md_5.Stringcode(user.getPassword());
        System.out.println("user = " + user);
        HashMap<String, java.io.Serializable> map = new HashMap<String, java.io.Serializable>();
        int n =0;
        List<User> list = userMapperService.sele();
        for (User s : list){
            if (s.getUsername().equals(user.getUsername())){
                //判断密码
                n = 1;
                if (s.getPassword().equals(passwordJiami)){
                    map.put("bool",true);
                    session.setAttribute("userid",s.getUsername());
                    map.put("username",s.getUsername());
                }else {
                    map.put("bool",false);
                }
                //判断角色
                //普通用户 不保存id
                if("0".equals(user.getStati())){
                    if ("1".equals(s.getStati())){
                        map.put("static",true);
                    }else {
                        map.put("static",false);
                    }
                }else {
                    //管理员 登录时就保存id
                    if ("1".equals(s.getStats())){
                        map.put("static",true);
                        Session.nameId = s.getId();
                        map.put("id",s.getId());
                    }else {
                        map.put("static",false);
                    }
                }
            }
        }
//       账号错误
        if (n== 0){
            return JSON.toJSONString(null);
        }
        System.out.println("map = " + map);
        return JSON.toJSONString(map);
    }


    /**
     * 前端注册页面请求
     * @return
     */
    @RequestMapping(value = "/zhu_c")
    public String zhuC(){
        return "qianzhuc";
    }


    /**
     * 注册请求
     * @param user
     * @return
     */
    @RequestMapping(value = "/zhu_ce",method = RequestMethod.POST)
    @ResponseBody
    public String zhuceAction(@RequestBody User user){
//        System.out.println(user);
        int n = 0;
        //判断用户名是否为空
        if (user.getUsername() != null &&user.getUsername().equals("")){
            return JSON.toJSONString("4");
        }
        //判断密码是否为空
        if (user.getPassword() != null && user.getPassword().equals("")){
            return JSON.toJSONString("3");
        }

        List<User> list = userMapperService.sele();
        for (User s : list){
            if (s.getUsername().equals(user.getUsername())){
                return JSON.toJSONString("2");
            }
        }
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        user.setTime(date);
        n = userMapperService.insert(user);
        return n > 0 ? JSON.toJSONString("1"):JSON.toJSONString("0");
    }


    /**
     * 二重验证
     * @return
     */
    @RequestMapping(value = "/yan", method = RequestMethod.POST)
    @ResponseBody
    public String yanUser(@RequestBody User user){
        System.out.println("user = " + user);
        String passwords = Md_5.Stringcode(user.getPassword());
        String usernames =  userMapperService.selectUserYan(user.getUsername());
        if (usernames.equals(passwords)){
            return JSON.toJSONString(true);
        }
        return JSON.toJSONString(false);
    }

}
