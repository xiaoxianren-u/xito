package com.yz.service;

import com.yz.pojo.TextWen;
import com.yz.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/25 19:37 星期日
 * @Software: IntelliJ IDEA
 * @File : SysUserxiMapperService.JAVA
 */

@Repository
public interface SysUserxiMapperService {

    /**
     * 用户列表
     * @param page
     * @param limit
     * @return
     */
    List<User> selectAll(Integer page, Integer limit);

    /**
     * 用户人数
     * @return
     */
    int selectCount();

    /**
     * 权限管理，修改普通用户，或管理员
     * @param user
     * @return
     */
    int updateStat(User user);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 获取用户个人中心个人信息
     * @param user
     * @return
     */
    User selectUser(User user);

    /**
     *  修改头像
     * @param user
     * @return int
     */
    int updateImage(User user);

    /**
     * 显示首页头像
     * @param username
     * @return 图片地址
     */
    String inde_image(@Param("username") String username);

    /**
     * 获取用户id
     * @param user_name
     * @return user
     */
    User userid(@Param("user_name") String user_name);




}
