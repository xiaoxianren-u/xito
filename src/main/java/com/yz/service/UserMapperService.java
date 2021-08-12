package com.yz.service;

import com.yz.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/23 20:31 星期五
 * @Software: IntelliJ IDEA
 * @File : UserMapper.JAVA
 */

@Repository
public interface UserMapperService {
    /**
     * 用户登录
     * @return sele
     */
    List<User> sele();

    /**
     * 用户注册
     * @param user
     * @return
     */

    int insert(User user);
}
