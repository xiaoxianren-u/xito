package com.yz.util;



import javax.servlet.http.HttpServletRequest;



/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 15:20 星期一
 * @Software: IntelliJ IDEA
 * @File : Ip.JAVA
 */
public class Ip{

    public static String getIpAddr(HttpServletRequest request) {


        String ip = request.getHeader("x-forwarded-for");

        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getRemoteAddr();
        }
        System.out.println("ip = " + ip);
        return ip;

    }

}
