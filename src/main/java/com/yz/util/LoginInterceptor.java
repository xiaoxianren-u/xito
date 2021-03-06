package com.yz.util;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/25 23:42 星期日
 * @Software: IntelliJ IDEA
 * @File : LoginInterceptor.JAVA
 */

import com.yz.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 配置拦截器，拦截未登录用户
 * @author
 * @version
 * @since
 */
public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
        //执行完毕，返回前拦截
    }


    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {
        //处理过程中执行拦截
    }


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        获取请求URL
        String url = request.getRequestURI();
        System.out.println("url = " + url);
        HttpSession session = request.getSession();
        System.out.println("session.getAttribute(\"userid\") = " + session.getAttribute("userid"));
        int n =1;
//        开放的接口
        String [] ArrayList =
                {
                        "/login/",
                        "/login/zhu_c",
                        "/login/yz",
                        "/eroer",
                        "/login/login",
                        "/login/zhu_ce",
                        "/sys/qiantai/qiantai",
                        "/sys/qiantai/java",
                        "/sys/qiantai/python",
                        "/sys/qiantai/c",
                        "/sys/qiantai/javas",
                        "/sys/qiantai/php",
                        "/sys/qiantai/jiwangluo",
                        "/sys/qiantai/jixiton",
                        "/sys/qiantai/ruanji",
                        "/sys/qiantai/suanfa",
                        "/sys/qiantai/explain",
                        "/sys/qiantai/geren/recommend/listData",
                        "/sys/qiantai/geren/recommend/countData",
                        "/sys/qiantai/geren/explain/data"
                };

        for (String s : ArrayList){
            if (s.equals(url)){
                n = 0;
            }
        }
        if(n == 0){
            System.out.println("---------------------------------------------------");
            return true;
        }
        else if(session.getAttribute("userid")!=null) {
            // 登录成功不拦截
            System.out.println("+++++++++++++++++++++++++++++++");
            return true;
        }else {
            // 拦截后404
            request.getRequestDispatcher("/eroer").forward(request,response);
            return false;
        }

//        return true;  //开放所有接口
    }

}
