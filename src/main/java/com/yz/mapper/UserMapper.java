package com.yz.mapper;

import com.yz.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/23 19:57 星期五
 * @Software: IntelliJ IDEA
 * @File : UserMapper.JAVA
 */

public interface UserMapper {

    /**
     * 用户登录
     *
     * @return
     */
    List<User> sele();

    /**
     * 用户注册
     */

    int insert(User user);

    /**
     * 二重验证
     * @param username
     * @return
     */
    String selectUserYan(@Param("username") String username);

}
