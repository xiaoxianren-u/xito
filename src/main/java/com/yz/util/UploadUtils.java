package com.yz.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/10 14:45 星期二
 * @Software: IntelliJ IDEA
 * @File : UploadUtils.JAVA
 */
public class UploadUtils{
    /**
     * 上传保存的地址
     */
//    private static final String BASE_PATH = "E:\\apache-tomcat-9.0.41\\apache-tomcat-9.0.41\\webapps\\upload\\";

    public static  String BASE_PATH = null;
    //访问图片的地址
    private static final String SERVER_PATH = "/static/upload/";

    public static String upload(MultipartFile file,HttpServletRequest request){
        BASE_PATH = request.getSession().getServletContext().getRealPath("\\static\\upload");
        System.out.println("BASE_PATH = " + BASE_PATH);
        //获取上传文件的名称
        String fileName = file.getOriginalFilename();
        System.out.println("fileName = " + fileName);
//       用于判断是否只由数字跟字母组成
        String pattern = "[\\w]+[.]+[\\w]+";
        if (!fileName.matches(pattern)) {
            return null;
        }
        String uuid = UUID.randomUUID().toString().replace("-", "");
        String newFileName = uuid +"-"+fileName;
//        创建一个文件实例对象
        File image = new File(BASE_PATH,newFileName);
//        对文件进行上传操作
        try {
            file.transferTo(image);
        } catch (IOException e) {
            return null;
        }
//      返回请求路径
        return SERVER_PATH + newFileName;

    }



}
