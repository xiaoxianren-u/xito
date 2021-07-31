package com.yz.pojo;

import lombok.Data;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/7/25 19:28 星期日
 * @Software: IntelliJ IDEA
 * @File : UserData.JAVA
 */

@Data
public class UserData {

    private String id;
    private String username;
    private String experience;
    private String sex;
    private String score;
    private String city;
    private String sign;
    private String classify;
    private String wealth;
    private String right;

    @Override
    public String toString() {
        return "UserData{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", experience='" + experience + '\'' +
                ", sex='" + sex + '\'' +
                ", score='" + score + '\'' +
                ", city='" + city + '\'' +
                ", sign='" + sign + '\'' +
                ", classify='" + classify + '\'' +
                ", wealth='" + wealth + '\'' +
                ", right='" + right + '\'' +
                '}';
    }
}
