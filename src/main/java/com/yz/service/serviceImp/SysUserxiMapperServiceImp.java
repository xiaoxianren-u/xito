package com.yz.service.serviceImp;

import com.yz.mapper.SysUserxiMapper;
import com.yz.pojo.User;
import com.yz.service.SysUserxiMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/25 19:38 星期日
 * @Software: IntelliJ IDEA
 * @File : SysUserxiMapperServiceImp.JAVA
 */
@Service
public class SysUserxiMapperServiceImp implements SysUserxiMapperService {

    @Autowired
    private SysUserxiMapper sysUserxiMapper;

    /**
     * 后台用户列表，分页
     * @param page
     * @param limit
     * @return
     */
    @Override
    public List<User> selectAll(Integer page, Integer limit) {
        return sysUserxiMapper.selectAll(page,limit);
    }

    /**
     * 后台用户人数，
     * @return
     */

    @Override
    public int selectCount() {
        return sysUserxiMapper.selectCount();
    }


    /**
     * 权限管理，修改普通用户，或管理员
     * @param user
     * @return
     */
    @Override
    public int updateStat(User user) {
        return sysUserxiMapper.updateStat(user);
    }


    /**
     * 用户信息修改
     * @param user
     * @return
     */
    @Override
    public int updateUser(User user) {
        return sysUserxiMapper.updateUser(user);
    }

    /**
     * 获取用户个人中心个人信息
     * @param user
     * @return sysUserxiMapper.selectUser(user)
     */


    @Override
    public User selectUser(User user) {
        return sysUserxiMapper.selectUser(user);
    }
}
