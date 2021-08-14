package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import com.yz.mapper.SysUserxiMapper;
import com.yz.pojo.Cllect;
import com.yz.pojo.TextWen;
import com.yz.pojo.User;
import com.yz.service.SysTextWenMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
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
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        textWen.setText_date(date);
        int n = sysTextWenMapperService.insertTextWenInt(textWen);
        map.put("msg", n > 0);
        return JSON.toJSONString(map);
    }

    /**
     *获取个人内容个数
     * @param username
     * @return 个人内容数量
     */

    @RequestMapping(value = "/recommend/count" , method = RequestMethod.GET)
    @ResponseBody
    public String recommendCount(@RequestParam(value = "username") String username){
        HashMap<String, Integer> map = new HashMap<>();
        User user = sysUserxiMapperService.userid(username);
        int count = sysTextWenMapperService.selectTextWenCount(user.getId());
        map.put("count",count);
        return JSON.toJSONString(map);
    }

    /**
     * 获取个人内容
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

    /**
     * 获取前端全部内容个数
     * @return
     */
    @RequestMapping(value = "/recommend/countData",method = RequestMethod.GET)
    @ResponseBody
    public String requestCountData(@RequestParam(value = "text_label") String text_label){
        HashMap<String, Integer> map = new HashMap<>();
        int n = sysTextWenMapperService.selectTextWenCountData(text_label);
        map.put("count",n);
        return JSON.toJSONString(map);
    }

    /**
     *  获取前端全部内容
     * @param text_label
     * @param curr
     * @param limit
     * @return
     */
    @RequestMapping(value = "/recommend/listData",method = RequestMethod.GET)
    @ResponseBody
    public String recommendListData(@RequestParam(value = "text_label") String text_label, @RequestParam(value = "curr") Integer curr, @RequestParam(value = "limit") Integer limit) {
        HashMap<String, Object> map = new HashMap();
        curr = (curr - 1) * limit;
        List<TextWen> list = sysTextWenMapperService.selectTextWenData(text_label,curr,limit);
        map.put("data",list);
        return JSON.toJSONString(map);
    }

    /**
     * 实现收藏功能
     * @param text_id
     * @param username
     * @return
     */
    @RequestMapping(value = "/recommend/cllect",method = RequestMethod.GET)
    @ResponseBody
    public String recommendedCllect(@RequestParam(value = "text_id") Integer text_id,@RequestParam(value = "username") String username){
        List<Cllect> list = sysTextWenMapperService.selectCll(username);
        for (Cllect cllect : list){
            if (cllect.getText_id().equals(text_id)) {
                return JSON.toJSONString(0);
            }
        }
        String cll_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        int n = sysTextWenMapperService.insertCllect(text_id,username,cll_date);
        return JSON.toJSONString(n>0?1:2);
    }

    @RequestMapping(value = "/recommend/delete",method = RequestMethod.GET)
    @ResponseBody
    public String recommendedDelete(@RequestParam(value = "text_id") Integer text_id,@RequestParam(value = "username") String username){
        TextWen textWen = new TextWen();
//        System.out.println("text_id = " + text_id+"  "+username);
        textWen.setText_id(text_id);
        User user = sysUserxiMapperService.userid(username);
        textWen.setText_rec_id(user.getId());
//        System.out.println("textWen = " + textWen);
        int n =  sysTextWenMapperService.selectText(textWen);
        return JSON.toJSONString(n>0);
    }





}
