package com.yz.pojo;

import lombok.Data;

import java.util.Date;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/23 19:11 星期五
 * @Software: IntelliJ IDEA
 * @File : User.JAVA
 */

@Data
public class User {

    /**
     * 用户编号
     */
    private Integer id;
    /**
     * 用户账号
     */
    private String username;
    /**
     * 用户密码
     */
    private String password;
    /**
     *用户角色类别 1，如果用户选择普通用户 0 ，就用 stati 判断 如果等于 1；表示可以登录用户页面，反之
     */
    private String stati;
    /**
     *用户角色类别 2，如果用户选择管理员 1 ，就用 stats 判断 如果等于 1；表示可以登录后台管理，反之
     */
    private String stats;
    /**
     *用户邮箱 默认null
     */
    private String email;
    /**
     *用户积分
     */
    private Integer integral;
    /**
     *用户码币
     */
    private Integer codecurrency;

    /**
     *用户电话
     */
    private String phone;

    /**
     *用户性别
     */
    private String sex;

    /**
     *用户兴趣
     */
    private String interest;
    /**
     *用户简介
     */
    private String summary;
    /**
     *用户所在地区
     */
    private String area;
    /**
     *用户学校
     */
    private String school;
    /**
     *用户注册的时间
     */
    private String time;

    /**
     * 用户头像地址
     */

    private String image;

    /**
     * 用户名称
     */
    private String name;
}
