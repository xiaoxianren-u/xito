package com.yz.pojo;

import lombok.Data;

/**
 * @Email: 1793925141@qq.com
 * @Author: yangzhan
 * @Tiem: 2021/8/12 16:05 星期四
 * @Software: IntelliJ IDEA
 * @File : TextWen.JAVA
 */


/**
 * 内容数据
 */
@Data
public class TextWen {
    /**
     * 内容id
     */
    private Integer text_id;
    /**
     * 内容状态, 默认 审核中 "0"，拒绝 "1"，通过并显示 "2"
     */
    private Integer text_status;
    /**
     * 内容名称
     */
    private String text_name;
    /**
     * 内容描述
     */
    private String text_describe;
    /**
     * 内容链接
     */
    private String text_link;
    /**
     * 内容标签
     */
    private String text_label;
    /**
     * 内容图标
     */
    private String text_image;
    /**
     * 内容详细
     */
    private String text_detailed;
    /**
     * 内容上传时间
     */
    private String text_date;
    /**
     * 内容推荐者id
     */
    private Integer text_rec_id;
    /**
     * 内容收藏量
     */
    private Integer text_collect;
    /**
     * 内容分享量
     */
    private Integer text_share;
    /**
     * 内容访问量
     */
    private Integer text_read;
    /**
     * 内容评分总分数
     */
    private Integer text_score;
    /**
     * 内容评分人数
     */
    private Integer text_total;
    /**
     * 用户名
     */
    private String user_name;
    /**
     * 收藏状态
     */
    private String cll_status;

}
