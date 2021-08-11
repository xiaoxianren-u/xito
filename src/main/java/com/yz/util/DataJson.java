package com.yz.util;

import lombok.Data;

import java.util.Map;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/10 15:42 星期二
 * @Software: IntelliJ IDEA
 * @File : DataJson.JAVA
 */

@Data
public class DataJson {

    private Integer code;
    private String msg;
    private Map<String, String> data;
}
