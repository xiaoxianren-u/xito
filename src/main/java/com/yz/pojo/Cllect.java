package com.yz.pojo;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/14 15:56 星期六
 * @Software: IntelliJ IDEA
 * @File : Cllect.JAVA
 */

import lombok.Data;

/**
 * 收藏表
 *
 */

@Data
public class Cllect {

    /**
     * 收藏id
     */

    private Integer cll_id;
    /**
     * 内容id
     */
    private Integer text_id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 收藏时间
     */
    private String cll_data;
    /**
     * 收藏状态
     */
    private String cll_status;



}
