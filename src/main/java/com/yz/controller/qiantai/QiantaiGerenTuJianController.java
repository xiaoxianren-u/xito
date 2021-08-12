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



    @RequestMapping(value = "/recommend",method = RequestMethod.POST)
    @ResponseBody
    public String recommend(@RequestBody TextWen textWen){
        HashMap<String, Object> map = new HashMap();
        User user = sysUserxiMapperService.userid(textWen.getUser_name());
        textWen.setText_rec_id(user.getId());
        int n = sysTextWenMapperService.insertTextWenInt(textWen);
        map.put("msg", n > 0);
        return JSON.toJSONString(map);
    }

    @RequestMapping(value = "/recommend/list",method = RequestMethod.POST)
    @ResponseBody
    public String recommendList(@RequestBody User s){
        HashMap<String, Object> map = new HashMap();
        User user = sysUserxiMapperService.userid(s.getUsername());

        List<TextWen> list = sysTextWenMapperService.selectTextWen(user.getId());
        map.put("data",list);
        return JSON.toJSONString(map);
    }


}
