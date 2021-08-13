package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import com.yz.mapper.SysUserxiMapper;
import com.yz.pojo.TextWen;
import com.yz.pojo.User;
import com.yz.service.SysTextWenMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/12 17:52 星期四
 * @Software: IntelliJ IDEA
 * @File : QiantaiGerenTuJianController.JAVA
 */

/**
 * 对text_wen数据库进行操作
 */

@Controller
@RequestMapping(value = "/sys/qiantai/geren")
public class QiantaiGerenTuJianController {

    @Autowired
    private SysUserxiMapper sysUserxiMapperService;

    @Autowired
    private SysTextWenMapperService sysTextWenMapperService;

    /**
     * 添加内容
     * @param textWen 前端数据
     * @return
     */

    @RequestMapping(value = "/recommend",method = RequestMethod.POST)
    @ResponseBody
    public String recommend(@RequestBody TextWen textWen){
        HashMap<String, Object> map = new HashMap();
//        根据用户名获取id
        User user = sysUserxiMapperService.userid(textWen.getUser_name());
        textWen.setText_rec_id(user.getId());
        int n = sysTextWenMapperService.insertTextWenInt(textWen);
        map.put("msg", n > 0);
        return JSON.toJSONString(map);
    }

    /**
     *
     * @param username
     * @return 内容数量
     */

    @RequestMapping(value = "/recommend/count" , method = RequestMethod.GET)
    @ResponseBody
    public String recommendCount(@RequestParam(value = "username") String username){
        HashMap<String, Integer> map = new HashMap<>();
//        内容条数
        int count;
        System.out.println("1");
        User user = sysUserxiMapperService.userid(username);
        System.out.println("2");
        count = sysTextWenMapperService.selectTextWenCount(user.getId());
        System.out.println("3");
        System.out.println("count = " + count);
        map.put("count",count);
        return JSON.toJSONString(map);
    }


    /**
     * 获取内容
      * @param username  用户名
     * @param curr  第几页
     * @param limit 每页数量
     * @return
     */

    @RequestMapping(value = "/recommend/list",method = RequestMethod.POST)
    @ResponseBody
    public String recommendList(@RequestParam(value = "username") String username, @RequestParam(value = "curr") Integer curr, @RequestParam(value = "limit") Integer limit) {
        HashMap<String, Object> map = new HashMap();
//        根据用户名获取id
        User user = sysUserxiMapperService.userid(username);
        curr = (curr - 1) * limit;
        List<TextWen> list = sysTextWenMapperService.selectTextWen(user.getId(),curr,limit);
        map.put("data",list);
        System.out.println("list = " + list);
        return JSON.toJSONString(map);
    }


}
