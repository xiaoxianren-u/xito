package com.yz.controller.qiantai;

import com.alibaba.fastjson.JSON;
import com.yz.pojo.User;
import com.yz.service.SysUserxiMapperService;
import com.yz.util.DataJson;
import com.yz.util.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
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

    /**
     * 个人头像页面
     * @return paxt + "/toux"
     */
    @RequestMapping(value = "/toux")
    public String toux(){
        return paxt + "/toux";
    }

    /**
     * 上传图片
     * @param file
     * @param request
     * @return JSON
     */
    @RequestMapping(value = "/image")
    @ResponseBody
    public String image(@RequestParam("file") MultipartFile file, HttpServletRequest request){
        System.out.println("file = " + file);
        String imagePath = UploadUtils.upload(file,request);
        HashMap<String, String> map = new HashMap<>();
        DataJson dataJson = new DataJson();
        String str = null;
        if (imagePath != null) {
            dataJson.setCode(1);
            dataJson.setMsg("上传成功");
            System.out.printf("++++++++++++++++++++++++++++_——————————————————————————————————————————");
            map.put("src",imagePath);
            dataJson.setData(map);
        }else {
            dataJson.setCode(0);
            dataJson.setMsg("上传失败");
        }
        return JSON.toJSONString(dataJson);

    }

    /**
     * 保存图片路径
     * @param user
     * @return
     */
    @RequestMapping(value = "imager" ,method = RequestMethod.POST)
    @ResponseBody
    public String imager(@RequestBody User user){
        HashMap<String, String> map = new HashMap();
        System.out.println("user.getImage() = " + user.getImage());
        int n = sysUserxiMapperService.updateImage(user);
        map.put("msg",(n > 0) ? "修改成功":"修改失败");
        return JSON.toJSONString(map);
    }

    /**
     * 请求首页头像
     * @param user
     * @return
     */
    @RequestMapping(value = "/indimage",method = RequestMethod.POST)
    @ResponseBody
    public String indeximager(@RequestBody User user){
//        System.out.println("username = " + uy|\);

        String image = sysUserxiMapperService.inde_image(user.getUsername());

        return JSON.toJSONString(image);
    }

}
