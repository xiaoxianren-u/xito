package com.yz.controller.houtai;

import com.alibaba.fastjson.JSON;
import com.yz.pojo.TextWen;
import com.yz.pojo.User;
import com.yz.service.SysTextWenMapperService;
import com.yz.service.SysUserxiMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/17 13:25 星期二
 * @Software: IntelliJ IDEA
 * @File : HouGeneralController.JAVA
 */

/**
 * 后台的内容管理
 * @author yangzhan
 */
@Controller
@RequestMapping(value = "/sys/houtai")
public class HouGeneralController {

    @Autowired
    private SysTextWenMapperService sysTextWenMapperService;

    @Autowired
    private SysUserxiMapperService sysUserxiMapperService;

    private final String paxt = "/sys/houtai/sysguanli";
    /**
     * 后台的内容管理页面请求
     * @return 页面
     */
    @RequestMapping(value = "/general.action")
    public String GeneralAction(){
        return paxt+"/general";
    }

    /**
     * 后端内容列表
     * @param page
     * @param limit
     * @return
     */

    @RequestMapping(value = "/generalList",method = RequestMethod.GET)
    @ResponseBody
    public String GeneralList(@RequestParam("page") Integer page,@RequestParam("limit") Integer limit,@RequestParam("text_id") Integer text_id,@RequestParam("text_name") String text_name,@RequestParam("text_label") String text_label,@RequestParam("username") String username){
//        System.out.println("text_label = " + text_label);
        if (text_name.length()>0){
            try {
                text_name = new String(text_name.getBytes("ISO-8859-1"),"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        if (text_label.length()>0){
            try {
                text_label = new String(text_label.getBytes("ISO-8859-1"),"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        Integer text_rec_id = null;
        if (!"".equals(username)){
            User user = sysUserxiMapperService.userid(username);
            if (user!= null){
                text_rec_id = user.getId();
            }else {
                return JSON.toJSONString(false);
            }

        }
        int n = sysTextWenMapperService.selectTextWenCountGeneraData(text_id,text_name,text_label,text_rec_id);
        page = (page-1)*limit;
        List<TextWen> list = sysTextWenMapperService.GeneralList(page,limit,text_id,text_name,text_label,text_rec_id);
        String str = "{\"code\":0,\"msg\":\"\",\"count\":" + n + ",\"data\":" + JSON.toJSONString(list) + "}";
        return str;
    }

    /**
     * 后台删除内容
     * @param text_id
     * @return
     */
    @RequestMapping(value = "/generalList/sta/delete",method = RequestMethod.GET)
    @ResponseBody
    public String StaDelete(@RequestParam("text_id") Integer text_id){

        int n = sysTextWenMapperService.StaDelete(text_id);

        return JSON.toJSONString(n>0);
    }

    /**
     * 后台修改内容状态
     * @param text_id
     * @param text_status
     * @return
     */
    @RequestMapping(value = "/generalList/sta",method = RequestMethod.GET)
    @ResponseBody
    public String StaUpdate(@RequestParam("text_id") Integer text_id,@RequestParam("text_status") Integer text_status){

        int n = sysTextWenMapperService.StaUpdate(text_id,text_status);

        return JSON.toJSONString(n>0);
    }




}
