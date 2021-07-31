package com.yz.service.serviceImp;
import com.yz.mapper.UserMapper;
import com.yz.pojo.User;
import com.yz.service.UserMapperService;
import com.yz.util.Md_5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.security.provider.MD5;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/23 20:35 星期五
 * @Software: IntelliJ IDEA
 * @File : UserMapperServiceImp.JAVA
 */
@Service
public class UserMapperServiceImp implements UserMapperService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 用户登录
     * @return
     */
    @Override
    public List<User> sele() {
        return userMapper.sele();
    }


    /**
     * 用户注册
     * @param user
     * @return
     */
    @Override
    public int insert(User user) {
        User user1= Md_5.code(user);
        System.out.println("user1 = " + user1);
        return userMapper.insert(user1);
    }

}
