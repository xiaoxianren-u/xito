package com.yz.util;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 15:20 星期一
 * @Software: IntelliJ IDEA
 * @File : Ip.JAVA
 */
public class Ip {


    public static void main(String[] args) {
        String pattern = "[\\w]+[.]+[\\w]+";
        String uid = "a2sdhf23jhsd.jsp";
        String usdf = "_df23_";
        System.out.println("uid.matches(pattern) = " + uid.matches(pattern));
        System.out.println("usdf.matches(pattern) = " + usdf.matches(pattern));
    }

}
