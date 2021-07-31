package com.yz.util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/26 13:50 星期一
 * @Software: IntelliJ IDEA
 * @File : LoginFilter.JAVA
 */

public class LoginFilter implements Filter {


    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }


    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
            throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest request = (HttpServletRequest)arg0;
        HttpServletResponse response = (HttpServletResponse)arg1;
        HttpSession session = request.getSession();
        System.out.println("request.getRequestURI() = " + request.getRequestURI());
//        if(session.getAttribute("LOGIN_USER")==null
//                && request.getRequestURI().indexOf("/jsp/login") == -1){
//            // 没有登录
//            response.sendRedirect(request.getContextPath()+"/jsp/login");
//        }else{
//            // 已经登录，继续请求下一级资源（继续访问）
//            arg2.doFilter(arg0, arg1);
//        }

        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

    }


    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub

    }

}

